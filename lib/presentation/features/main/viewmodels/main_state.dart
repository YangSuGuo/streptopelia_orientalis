import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    // 底部导航栏索引
    @Default(0) int currentIndex,
    @Default(false) bool isMiniMode,
    @Default(false) bool isAddMode,
  }) = _MainState;
}
