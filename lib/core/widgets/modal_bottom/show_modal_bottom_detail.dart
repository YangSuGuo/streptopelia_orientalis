import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'bottom_sheet_controller.dart';

Future<T?> showAdaptiveCupertinoModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  List<double> snapPositions = const [0.25, 0.5, 0.95],
  int initialPositionIndex = 0,
  bool allowDismiss = true,
  Duration animationDuration = const Duration(milliseconds: 300),
  Duration snapAnimationDuration = const Duration(milliseconds: 200),
  Curve animationCurve = Curves.easeOutCubic,
  Curve snapCurve = Curves.easeOutBack,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  Clip? clipBehavior,
  Color? barrierColor,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? previousRouteAnimationCurve,
  bool useRootNavigator = false,
  bool bounce = true,
  bool? isDismissible,
  bool enableDrag = true,
  Radius topRadius = const Radius.circular(12),
  RouteSettings? settings,
  Color? transitionBackgroundColor,
  BoxShadow? shadow,
  SystemUiOverlayStyle? overlayStyle,
  double? closeProgressThreshold,
  bool showDragHandle = true,
  Widget? customDragHandle,
  Color? dragHandleColor,
  Widget? header,
  bool useSafeArea = true,
  void Function(ScrollController)? onScrollControllerCreated,
}) async {
  assert(debugCheckHasMediaQuery(context));
  assert(snapPositions.isNotEmpty, "snapPositions 不能为空");
  assert(
    initialPositionIndex >= 0 && initialPositionIndex < snapPositions.length,
    "initialPositionIndex 必须在 snapPositions 有效范围内",
  );

  return Navigator.of(context, rootNavigator: useRootNavigator).push(
    CupertinoModalBottomSheetRoute<T>(
      builder: (context) => ProviderScope(
        overrides: [
          // 为每个弹窗实例创建独立的状态
          bottomSheetControllerProvider(snapPositions: snapPositions, initialPositionIndex: initialPositionIndex),
        ],
        child: _SnapBottomSheetContent(
          builder: builder,
          snapPositions: snapPositions,
          initialPositionIndex: initialPositionIndex,
          allowDismiss: allowDismiss,
          snapAnimationDuration: snapAnimationDuration,
          snapCurve: snapCurve,
          showDragHandle: showDragHandle,
          customDragHandle: customDragHandle,
          dragHandleColor: dragHandleColor,
          header: header,
          useSafeArea: useSafeArea,
          onScrollControllerCreated: onScrollControllerCreated,
          backgroundColor: backgroundColor,
          topRadius: topRadius,
          shadow: shadow,
          overlayStyle: overlayStyle,
        ),
      ),
      expanded: expand,
      closeProgressThreshold: closeProgressThreshold,
      elevation: elevation,
      bounce: bounce,
      shape: shape,
      clipBehavior: clipBehavior,
      isDismissible: isDismissible ?? !expand,
      modalBarrierColor: barrierColor,
      enableDrag: enableDrag,
      topRadius: topRadius,
      animationCurve: animationCurve,
      previousRouteAnimationCurve: previousRouteAnimationCurve,
      duration: animationDuration,
      settings: settings,
      transitionBackgroundColor: transitionBackgroundColor,
      overlayStyle: overlayStyle,
    ),
  );
}

/// 可吸附的底部弹窗内容组件（ConsumerStatefulWidget 版本）
class _SnapBottomSheetContent extends ConsumerStatefulWidget {
  final WidgetBuilder builder;
  final List<double> snapPositions;
  final int initialPositionIndex;
  final bool allowDismiss;
  final Duration snapAnimationDuration;
  final Curve snapCurve;
  final bool showDragHandle;
  final Widget? customDragHandle;
  final Color? dragHandleColor;
  final Widget? header;
  final bool useSafeArea;
  final void Function(ScrollController)? onScrollControllerCreated;
  final Color? backgroundColor;
  final Radius topRadius;
  final BoxShadow? shadow;
  final SystemUiOverlayStyle? overlayStyle;

  const _SnapBottomSheetContent({
    required this.builder,
    required this.snapPositions,
    required this.initialPositionIndex,
    required this.allowDismiss,
    required this.snapAnimationDuration,
    required this.snapCurve,
    required this.showDragHandle,
    this.customDragHandle,
    this.dragHandleColor,
    this.header,
    required this.useSafeArea,
    this.onScrollControllerCreated,
    this.backgroundColor,
    required this.topRadius,
    this.shadow,
    this.overlayStyle,
  });

  @override
  ConsumerState<_SnapBottomSheetContent> createState() => _SnapBottomSheetContentState();
}

class _SnapBottomSheetContentState extends ConsumerState<_SnapBottomSheetContent> with TickerProviderStateMixin {
  late ScrollController _scrollController;
  late BottomSheetController? _controller;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    widget.onScrollControllerCreated?.call(_scrollController);

    _controller = ref.read(
      bottomSheetControllerProvider(
        snapPositions: widget.snapPositions,
        initialPositionIndex: widget.initialPositionIndex,
      ).notifier,
    );

    // 初始化动画控制器
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller?.initAnimationController(this, widget.snapAnimationDuration);
      final screenHeight = MediaQuery.of(context).size.height;
      _controller?.setInitialPosition(screenHeight);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller?.dispose();
    super.dispose();
  }

  /// 构建拖拽手柄
  Widget _buildDragHandle(double screenHeight) {
    if (!widget.showDragHandle) return const SizedBox.shrink();

    final effectiveColor = widget.dragHandleColor ?? Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(50);

    final handleWidget =
        widget.customDragHandle ??
        Semantics(
          button: true,
          label: '拖动以调整高度',
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            width: 80.w,
            height: 3.2.h,
            decoration: BoxDecoration(color: effectiveColor, borderRadius: BorderRadius.circular(3)),
          ),
        );

    return Center(child: handleWidget);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    // 监听状态变化
    final state = ref.watch(
      bottomSheetControllerProvider(
        snapPositions: widget.snapPositions,
        initialPositionIndex: widget.initialPositionIndex,
      ),
    );

    final controller = ref.read(
      bottomSheetControllerProvider(
        snapPositions: widget.snapPositions,
        initialPositionIndex: widget.initialPositionIndex,
      ).notifier,
    );

    final effectiveBackgroundColor = widget.backgroundColor ?? Theme.of(context).colorScheme.surface;

    final containerShadow =
        widget.shadow ?? const BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(0, -4));

    Widget content = GestureDetector(
      onVerticalDragStart: controller.handleDragStart,
      onVerticalDragUpdate: (details) => controller.handleDragUpdate(details, screenHeight),
      onVerticalDragEnd: (details) => controller.handleDragEnd(
        details,
        screenHeight: screenHeight,
        allowDismiss: widget.allowDismiss,
        onDismiss: () => Navigator.of(context).pop(),
        snapCurve: widget.snapCurve,
        snapDuration: widget.snapAnimationDuration,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: effectiveBackgroundColor,
          borderRadius: BorderRadius.vertical(top: widget.topRadius),
          boxShadow: [containerShadow],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildDragHandle(screenHeight),
            if (widget.header != null) widget.header!,
            Flexible(
              fit: FlexFit.loose,
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  return false;
                },
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(overscroll: false),
                  child: PrimaryScrollController(
                    controller: _scrollController,
                    child: Builder(builder: (context) => widget.builder(context)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    if (widget.useSafeArea) {
      content = SafeArea(top: false, child: content);
    }

    return SizedBox(height: state.currentPosition, child: content);
  }
}
