import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/presentation/features/main/viewmodels/main_state.dart';

part 'main_view_model.g.dart';

@riverpod
class MainViewModel extends _$MainViewModel {
  @override
  build() {
    return const MainState();
  }

  void update({
    int? currentIndex,
    bool? isMiniMode,
    bool? isAddMode,
    // bool? isSearching,
    // bool? searchFieldFocused,
  }) {
    state = state.copyWith(
      currentIndex: currentIndex ?? state.currentIndex,
      isMiniMode: isMiniMode ?? state.isMiniMode,
      isAddMode: isAddMode ?? state.isAddMode,
      // isSearching: isSearching ?? state.isSearching,
      // searchFieldFocused: searchFieldFocused ?? state.searchFieldFocused,
    );
  }

  void handleTabSelected(int index, Map<int, ScrollController> scrollControllers) {
    if (index == state.currentIndex && state.isMiniMode) {
      update(isMiniMode: false);
    } else {
      final ctrl = scrollControllers[index] ?? scrollControllers[-1]!;
      final newMini = ctrl.hasClients && ctrl.offset > 50;
      update(
        currentIndex: index,
        isAddMode: false,
        isMiniMode: newMini,
      );
    }
  }
}
