import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/numeric_field.dart';
import '../../../domain/entity/option_field.dart';
import '../../../domain/entity/step_definition.dart';

part 'add_state.freezed.dart';

@freezed
abstract class AddState with _$AddState {
  const factory AddState({
    // --- 项目基本信息（UI 表单字段） ---
    @Default('') String name,
    String? icon,
    String? description,
    String? color,
    int? categoryId,
    @Default('未分类') String categoryTitle,

    // --- 功能开关 ---
    @Default(false) bool enableNumericRecord,
    @Default(false) bool enableOptionRecord,
    @Default(false) bool enableStepRecord,
    @Default(false) bool enableLocationRecord,
    @Default(false) bool enableMediaRecord,
    @Default(false) bool enableStartRecord,
    @Default(false) bool enableNotification,

    // --- 关联子表数据 ---
    @Default([]) List<NumericField> numericFields,
    @Default([]) List<OptionField> optionFields,
    @Default([]) List<StepDefinition> stepDefinitions,

    // --- UI 状态 ---
    @Default(false) bool isSubmitting,
    String? errorMessage,
    @Default(false) bool submitSuccess,
  }) = _AddState;
}
