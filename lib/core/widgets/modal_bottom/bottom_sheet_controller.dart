import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'bottom_sheet_state.dart';

part 'bottom_sheet_controller.g.dart';

/// 底部弹窗状态控制器
@riverpod
class BottomSheetController extends _$BottomSheetController {
  AnimationController? _animationController;
  VoidCallback? _animationListener;
  TickerProvider? _tickerProvider;

  AnimationController? get animationController => _animationController;

  @override
  BottomSheetState build({required List<double> snapPositions, int initialPositionIndex = 0}) {
    final validIndex = initialPositionIndex.clamp(0, snapPositions.length - 1);

    ref.onDispose(_dispose);

    return BottomSheetState(
      snapPositions: snapPositions,
      initialPositionIndex: validIndex,
      currentSnapIndex: validIndex,
    );
  }

  void _dispose() {
    _animationListener?.call();
    _animationController?.dispose();
    _animationController = null;
    _tickerProvider = null;
  }

  /// 初始化动画控制器（必须在 TickerProvider 可用时调用）
  void initAnimationController(TickerProvider vsync, Duration duration) {
    if (_tickerProvider == vsync && _animationController != null) return;

    _tickerProvider = vsync;
    _animationController?.dispose();

    _animationController = AnimationController(vsync: vsync, duration: duration, value: state.currentPosition);
  }

  /// 设置初始位置（在获取屏幕高度后调用）
  void setInitialPosition(double screenHeight) {
    if (screenHeight <= 0) return;

    final initialHeight = state.getPositionHeight(screenHeight, state.initialPositionIndex);
    if (state.currentPosition != initialHeight) {
      state = state.copyWith(currentPosition: initialHeight);
      _animationController?.value = initialHeight;
    }
  }

  /// 动画到指定吸附位置
  Future<void> animateToPosition(
    int positionIndex, {
    Duration? duration,
    Curve curve = Curves.easeOutCubic,
    required double screenHeight,
  }) async {
    final controller = _animationController;
    if (controller == null || !controller.isAnimating && controller.isDismissed) return;

    final validIndex = positionIndex.clamp(0, state.snapPositions.length - 1);
    final targetHeight = state.getPositionHeight(screenHeight, validIndex);

    // 如果已经在目标位置，直接返回
    if ((state.currentPosition - targetHeight).abs() < 0.5) {
      state = state.copyWith(currentSnapIndex: validIndex);
      return;
    }

    // 停止当前动画
    controller.stop();

    final animation = Tween<double>(
      begin: state.currentPosition,
      end: targetHeight,
    ).animate(CurvedAnimation(parent: controller, curve: curve));

    // 使用单次监听避免内存泄漏
    late final VoidCallback listener;
    listener = () {
      state = state.copyWith(currentPosition: animation.value);
    };

    animation.addListener(listener);

    // 动画完成后清理
    void cleanup() {
      animation.removeListener(listener);
      state = state.copyWith(currentSnapIndex: validIndex);
    }

    controller.value = 0.0;

    try {
      await controller.forward(from: 0.0);
    } finally {
      cleanup();
    }
  }

  /// 处理拖拽开始
  void handleDragStart(DragStartDetails details) {
    _animationController?.stop();
    state = state.copyWith(
      dragStartY: details.globalPosition.dy,
      dragStartPosition: state.currentPosition,
      isDragging: true,
    );
  }

  /// 处理拖拽更新
  void handleDragUpdate(DragUpdateDetails details, double screenHeight) {
    if (!state.isDragging || screenHeight <= 0) return;

    final delta = state.dragStartY - details.globalPosition.dy;
    double newPosition = state.dragStartPosition + delta;

    final minHeight = state.getPositionHeight(screenHeight, 0);
    final maxHeight = state.getPositionHeight(screenHeight, state.snapPositions.length - 1);

    // 应用边界阻力
    if (newPosition < minHeight) {
      final overscroll = minHeight - newPosition;
      final resistance = state.calculateResistance(overscroll, minHeight);
      newPosition = minHeight - (overscroll * resistance);
    } else if (newPosition > maxHeight) {
      final overscroll = newPosition - maxHeight;
      final resistance = state.calculateResistance(overscroll, screenHeight - maxHeight);
      newPosition = maxHeight + (overscroll * resistance);
    }

    state = state.copyWith(currentPosition: newPosition.clamp(0.0, screenHeight));
  }

  /// 处理拖拽结束
  void handleDragEnd(
    DragEndDetails details, {
    required double screenHeight,
    required bool allowDismiss,
    required VoidCallback onDismiss,
    Curve snapCurve = Curves.easeOutCubic,
    Duration snapDuration = const Duration(milliseconds: 200),
  }) {
    if (!state.isDragging) return;

    state = state.copyWith(isDragging: false);

    final velocity = details.velocity.pixelsPerSecond.dy;
    final currentHeight = state.currentPosition;
    final dismissThreshold = state.getPositionHeight(screenHeight, 0) * 0.75;

    if (allowDismiss && (currentHeight <= dismissThreshold || velocity > 2500)) {
      SchedulerBinding.instance.addPostFrameCallback((_) => onDismiss());
      return;
    }

    int targetIndex;
    const velocityThreshold = 500.0;
    final currentIndex = state.findNearestSnapIndex(screenHeight);

    if (velocity < -velocityThreshold && currentIndex < state.snapPositions.length - 1) {
      // 快速下滑到下一个位置
      targetIndex = currentIndex + 1;
    } else if (velocity > velocityThreshold && currentIndex > 0) {
      // 快速上滑到上一个位置
      targetIndex = currentIndex - 1;
    } else {
      // 根据当前位置吸附
      targetIndex = currentIndex;
    }

    // 异步执行动画，避免阻塞手势回调
    SchedulerBinding.instance.addPostFrameCallback((_) {
      animateToPosition(targetIndex, duration: snapDuration, curve: snapCurve, screenHeight: screenHeight);
    });
  }
}
