import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/drift/repositories/project_repository.dart';
import '../../../../domain/entity/numeric_field.dart';
import '../../../../domain/entity/option_field.dart';
import '../../../../domain/entity/project.dart';
import '../../../../domain/entity/step_definition.dart';
import '../../../../domain/usecases/project_batch.dart';
import 'add_state.dart';

part 'add_view_model.g.dart';

@riverpod
class AddViewModel extends _$AddViewModel {
  @override
  AddState build() {
    return const AddState();
  }

  // --- 提交：组装 ProjectBatch，通过 Repository 持久化 ---

  Future<bool> submitProject() async {
    if (state.name.trim().isEmpty) {
      state = state.copyWith(errorMessage: '项目名称不能为空');
      return false;
    }

    state = state.copyWith(isSubmitting: true, errorMessage: null);

    try {
      final project = Project(
        categoryId: state.categoryId,
        name: state.name.trim(),
        icon: state.icon,
        description: state.description,
        color: state.color,
        enableNumericRecord: state.enableNumericRecord,
        enableOptionRecord: state.enableOptionRecord,
        enableStepRecord: state.enableStepRecord,
        enableLocationRecord: state.enableLocationRecord,
        enableMediaRecord: state.enableMediaRecord,
        enableStartRecord: state.enableStartRecord,
        enableNotification: state.enableNotification,
      );

      final batch = ProjectBatch(
        project: project,
        numericFields: state.numericFields,
        optionFields: state.optionFields,
        stepDefinitions: state.stepDefinitions,
      );

      final projectRepository = ref.read(projectRepositoryProvider);
      await projectRepository.addCompleteProject(batch);

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

  // --- 重置表单 ---

  void resetForm() {
    state = const AddState();
  }

  void clearError() {
    state = state.copyWith(errorMessage: null);
  }

  // --- 分类选择 ---

  void updateCategoryId(int? categoryId, {String categoryTitle = '未分类'}) {
    state = state.copyWith(
      categoryId: categoryId,
      categoryTitle: categoryTitle,
    );
  }
}
