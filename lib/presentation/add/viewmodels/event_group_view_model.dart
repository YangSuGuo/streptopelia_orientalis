import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/drift/repositories/project_repository.dart';
import '../../../../domain/entity/category.dart';
import 'event_group_state.dart';

part 'event_group_view_model.g.dart';

@riverpod
Stream<List<Category>> categoriesStream(Ref ref) async* {
  final repo = ref.watch(projectRepositoryProvider);
  yield* repo.watchAllCategories();
}

@riverpod
class AddEventGroupViewModel extends _$AddEventGroupViewModel {
  @override
  AddEventGroupState build() => const AddEventGroupState();

  void updateTitle(String title) => state = state.copyWith(title: title);

  void updateIcon(String icon) => state = state.copyWith(icon: icon);

  void updateColor(Color color) => state = state.copyWith(selectedColor: color);

  Future<bool> save() async {
    final currentTitle = state.title;
    if (currentTitle.trim().isEmpty) {
      return false;
    }

    try {
      final projectRepository = ref.read(projectRepositoryProvider);
      await projectRepository.addCategory(
        Category(
          title: currentTitle.trim(),
          icon: state.icon,
          colorTheme: state.selectedColor != null
              ? colorToHex(state.selectedColor!)
              : null,
        ),
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  static String colorToHex(Color color) =>
      color.toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase();

  static Color hexToColor(String hex) => Color(int.parse(hex, radix: 16));
}
