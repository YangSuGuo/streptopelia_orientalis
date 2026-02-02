import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/drift/entities/project.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    // 底部导航栏索引
    @Default(0) int currentIndex,

    // 当前记录条目总数
    @Default(0) int recordCount,

    // 当前项目列表（如果需要缓存）
    @Default([]) List<Project> projects,

    // 加载状态
    @Default(false) bool isLoading,
  }) = _HomeState;
}