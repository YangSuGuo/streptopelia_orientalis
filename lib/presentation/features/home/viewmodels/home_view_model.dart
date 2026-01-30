import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
// import 'package:streptopelia_orientalis/data/drift/repositories/record_type_repository.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import 'home_state.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    return const HomeState();
  }

  /// 加载项目列表


  /// 更新底部导航栏索引
  void updateCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}