import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/drift/entities/project.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    // 底部导航栏索引
    @Default(0) int currentIndex,
  }) = _HomeState;
}
