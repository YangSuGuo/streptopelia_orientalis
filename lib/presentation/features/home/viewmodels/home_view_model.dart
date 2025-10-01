import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/presentation/features/home/viewmodels/home_state.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    return const HomeState();
  }

  void setCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }
}
