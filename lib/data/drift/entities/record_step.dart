import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_step.freezed.dart';
part 'record_step.g.dart';

@freezed
abstract class RecordStep with _$RecordStep {
  const factory RecordStep({
    int? id,
    required int projectId,
    required int recordId,
    required int stepDefinitionId,
    required int stepNumber,
  }) = _RecordStep;

  factory RecordStep.fromJson(Map<String, dynamic> json) => _$RecordStepFromJson(json);
}