import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity/numeric_field.dart';
import '../entity/option_field.dart';
import '../entity/project.dart';
import '../entity/step_definition.dart';

part 'project_batch.freezed.dart';

@freezed
abstract class ProjectBatch with _$ProjectBatch {
  const factory ProjectBatch({
    required Project project,
    @Default([]) List<NumericField> numericFields,
    @Default([]) List<OptionField> optionFields,
    @Default([]) List<StepDefinition> stepDefinitions,
  }) = _ProjectBatch;
}
