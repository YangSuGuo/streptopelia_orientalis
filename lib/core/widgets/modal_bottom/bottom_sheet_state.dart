import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheet_state.freezed.dart';

/// 底部弹窗状态构造函数。
///
/// 用于创建 [BottomSheetState] 对象，表示底部弹窗的各种状态信息。
///
/// 参数说明：
/// - [currentPosition] 当前弹窗的高度位置，默认值为 0.0。
/// - [dragStartPosition] 拖拽开始时弹窗的高度位置，默认值为 0.0。
/// - [dragStartY] 拖拽开始时的全局 Y 坐标，默认值为 0.0。
/// - [isDragging] 是否正在拖拽弹窗，默认值为 false。
/// - [isScrolling] 是否正在滚动内容，默认值为 false。
/// - [lastScrollPosition] 上一次滚动的位置，默认值为 0.0。
/// - [scrollOffset] 滚动偏移量，默认值为 0.0。
/// - [lastVelocity] 上一次滚动的速度，默认值为 0.0。
/// - [lastScrollTime] 上一次滚动事件的时间戳，可为空。
/// - [currentSnapIndex] 当前吸附位置的索引，默认值为 0。
/// - [snapPositions] 吸附位置列表，为必需参数。
/// - [initialPositionIndex] 初始吸附位置的索引，默认值为 1。
@freezed
abstract class BottomSheetState with _$BottomSheetState {
  const factory BottomSheetState({
    @Default(0.0) double currentPosition,
    @Default(0.0) double dragStartPosition,
    @Default(0.0) double dragStartY,
    @Default(false) bool isDragging,
    @Default(0) int currentSnapIndex,
    required List<double> snapPositions,
    @Default(0) int initialPositionIndex,
  }) = _BottomSheetState;

  const BottomSheetState._();

  /// 获取当前吸附位置的高度（像素）
  double getPositionHeight(double screenHeight, int index) {
    return screenHeight * snapPositions[index];
  }

  /// 获取当前高度对应的最接近吸附索引
  int findNearestSnapIndex(double screenHeight) {
    int nearestIndex = 0;
    double minDistance = double.infinity;

    for (int i = 0; i < snapPositions.length; i++) {
      final targetHeight = getPositionHeight(screenHeight, i);
      final distance = (currentPosition - targetHeight).abs();
      if (distance < minDistance) {
        minDistance = distance;
        nearestIndex = i;
      }
    }
    return nearestIndex;
  }

  /// 计算阻力系数
  double calculateResistance(double distanceFromBoundary, double boundarySize) {
    const resistanceFactor = 0.3;
    final ratio = distanceFromBoundary / boundarySize;
    return 1.0 - (1.0 - ratio).clamp(0.0, 1.0) * resistanceFactor;
  }
}
