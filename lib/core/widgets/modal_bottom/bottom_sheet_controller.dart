import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'bottom_sheet_state.dart';

part 'bottom_sheet_controller.g.dart';

@riverpod
double screenHeight(Ref ref, BuildContext context) {
  return MediaQuery.of(context).size.height;
}

/// 底部弹窗状态控制器
@riverpod
class BottomSheetController extends _$BottomSheetController {
  AnimationController? _animationController;
  TickerProvider? _tickerProvider;

  @override
  BottomSheetState build({required List<double> snapPositions, int initialPositionIndex = 0}) {
    // 初始化状态
    return BottomSheetState(
      snapPositions: snapPositions,
      initialPositionIndex: initialPositionIndex,
      currentSnapIndex: initialPositionIndex,
    );
  }

  /// 初始化动画控制器
  void initAnimationController(TickerProvider vsync, Duration duration) {
    _tickerProvider = vsync;
    _animationController?.dispose();
    _animationController = AnimationController(vsync: vsync, duration: duration);

    // 监听动画值变化
    _animationController?.addListener(_onAnimationUpdate);
  }

  void _onAnimationUpdate() {
    if (_animationController != null) {
      state = state.copyWith(currentPosition: _animationController!.value);
    }
  }

  /// 清理资源
  void dispose() {
    _animationController?.removeListener(_onAnimationUpdate);
    _animationController?.dispose();
    _animationController = null;
  }

  /// 设置初始位置（在获取屏幕高度后调用）
  void setInitialPosition(double screenHeight) {
    final initialHeight = state.getPositionHeight(screenHeight, state.initialPositionIndex);
    state = state.copyWith(currentPosition: initialHeight);
  }

  /// 动画到指定吸附位置
  void animateToPosition(
    int positionIndex, {
    Duration? duration,
    Curve curve = Curves.easeOutBack,
    required double screenHeight,
  }) {
    if (_animationController == null || _tickerProvider == null) return;

    final targetHeight = state.getPositionHeight(screenHeight, positionIndex);
    final animDuration = duration ?? const Duration(milliseconds: 200);

    _animationController!.duration = animDuration;

    final animation = Tween<double>(
      begin: state.currentPosition,
      end: targetHeight,
    ).animate(CurvedAnimation(parent: _animationController!, curve: curve));

    // 使用自定义监听更新状态
    animation.addListener(() {
      state = state.copyWith(currentPosition: animation.value);
    });

    _animationController!.forward(from: 0);
    state = state.copyWith(currentSnapIndex: positionIndex);
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
    if (!state.isDragging) return;

    final delta = state.dragStartY - details.globalPosition.dy;
    double newPosition = state.dragStartPosition + delta;

    final minHeight = state.getPositionHeight(screenHeight, 0);
    final maxHeight = state.getPositionHeight(screenHeight, state.snapPositions.length - 1);

    if (newPosition < minHeight) {
      newPosition =
          minHeight + (newPosition - minHeight) * state.calculateResistance(minHeight - newPosition, minHeight);
    } else if (newPosition > maxHeight) {
      newPosition =
          maxHeight +
          (newPosition - maxHeight) * state.calculateResistance(newPosition - maxHeight, screenHeight - maxHeight);
    }

    state = state.copyWith(currentPosition: newPosition.clamp(0.0, screenHeight));
  }

  /// 处理拖拽结束
  void handleDragEnd(
    DragEndDetails details, {
    required double screenHeight,
    required bool allowDismiss,
    required VoidCallback onDismiss,
    Curve snapCurve = Curves.easeOutBack,
    Duration snapDuration = const Duration(milliseconds: 200),
  }) {
    state = state.copyWith(isDragging: false);

    final velocity = details.velocity.pixelsPerSecond.dy;
    final currentHeight = state.currentPosition;
    final dismissThreshold = state.getPositionHeight(screenHeight, 0) * 0.75;

    if (allowDismiss && (currentHeight <= dismissThreshold) || velocity > 2500) {
      onDismiss();
      return;
    }

    int targetPositionIndex;
    if (velocity < -500) {
      // 快速下滑
      final currentIndex = state.findNearestSnapIndex(screenHeight);
      targetPositionIndex = (currentIndex < state.snapPositions.length - 1) ? currentIndex + 1 : currentIndex;
    } else if (velocity > 500) {
      // 快速上滑
      final currentIndex = state.findNearestSnapIndex(screenHeight);
      targetPositionIndex = (currentIndex > 0) ? currentIndex - 1 : currentIndex;
    } else {
      targetPositionIndex = state.findNearestSnapIndex(screenHeight);
    }

    animateToPosition(targetPositionIndex, duration: snapDuration, curve: snapCurve, screenHeight: screenHeight);
  }
}
