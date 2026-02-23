import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_sheet_state.freezed.dart';

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

  /// 获取指定吸附位置的高度（像素）
  double getPositionHeight(double screenHeight, int index) {
    if (index < 0 || index >= snapPositions.length) return 0.0;
    return screenHeight * snapPositions[index];
  }

  /// 获取当前高度对应的最接近吸附索引
  int findNearestSnapIndex(double screenHeight) {
    if (snapPositions.isEmpty) return 0;

    double minDistance = double.infinity;
    int nearestIndex = currentSnapIndex.clamp(0, snapPositions.length - 1);

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

  /// 计算阻力系数 (0.0 - 1.0)
  double calculateResistance(double overscroll, double maxOverscroll) {
    if (maxOverscroll <= 0) return 1.0;
    const resistanceFactor = 0.3;
    final ratio = (overscroll / maxOverscroll).clamp(0.0, 1.0);
    return 1.0 - (ratio * resistanceFactor);
  }

  /// 获取最小/最大高度
  double get minHeight => snapPositions.isEmpty ? 0.0 : snapPositions.first;
  double get maxHeight => snapPositions.isEmpty ? 0.0 : snapPositions.last;
}