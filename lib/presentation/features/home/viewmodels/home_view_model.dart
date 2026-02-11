import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_state.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    return const HomeState();
  }

  /// 更新底部导航栏索引
  void updateCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}