import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'main_state.dart';

part 'main_view_model.g.dart';

@riverpod
class MainViewModel extends _$MainViewModel {
  @override
  build() {
    return const MainState();
  }

  void update({int? currentIndex, bool? isMiniMode, bool? isAddMode}) {
    state = state.copyWith(
      currentIndex: currentIndex ?? state.currentIndex,
      isMiniMode: isMiniMode ?? state.isMiniMode,
      isAddMode: isAddMode ?? state.isAddMode,
    );
  }

  void handleTabSelected(int index) {
    if (index == state.currentIndex && state.isMiniMode) {
      update(isMiniMode: false);
    } else {
      update(currentIndex: index, isAddMode: false, isMiniMode: false);
    }
  }
}
