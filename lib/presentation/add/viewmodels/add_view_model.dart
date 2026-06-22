import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/drift/repositories/project_repository.dart';
import '../../../../domain/entity/project.dart';
import 'add_state.dart';

part 'add_view_model.g.dart';

@riverpod
class AddViewModel extends _$AddViewModel {
  @override
  AddState build() {
    return const AddState(project: Project(name: ''));
  }

  void updateProject(Project project) {
    state = state.copyWith(project: project, errorMessage: null);
  }

  Future<bool> addProject() async {
    final currentProject = state.project;
    if (currentProject == null || currentProject.name.trim().isEmpty) {
      state = state.copyWith(errorMessage: '项目名称不能为空');
      return false;
    }

    state = state.copyWith(isSubmitting: true, errorMessage: null);

    try {
      final projectRepository = ref.read(projectRepositoryProvider);
      await projectRepository.addProject(currentProject);

      state = state.copyWith(isSubmitting: false, submitSuccess: true);
      return true;
    } catch (e) {
      state = state.copyWith(
        isSubmitting: false,
        errorMessage: '添加项目失败: ${e.toString()}',
      );
      return false;
    }
  }

  void resetForm() {
    state = const AddState(project: Project(name: ''));
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }
}

