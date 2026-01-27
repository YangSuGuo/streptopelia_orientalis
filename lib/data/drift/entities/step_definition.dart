import 'package:freezed_annotation/freezed_annotation.dart';

part 'step_definition.freezed.dart';
part 'step_definition.g.dart';

@freezed
abstract class StepDefinition with _$StepDefinition {
  const factory StepDefinition({
    int? id,
    required int projectId,
    required int stepNumber,
    required String title,
    String? description,
    required bool enableNumericRecord,
    required bool enableOptionRecord,
    required bool enableMediaRecord,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _StepDefinition;

  factory StepDefinition.fromJson(Map<String, dynamic> json) => _$StepDefinitionFromJson(json);
}