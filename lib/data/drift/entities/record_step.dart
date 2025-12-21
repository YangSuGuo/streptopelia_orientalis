import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_step.freezed.dart';
part 'record_step.g.dart';

@freezed
class RecordStep with _$RecordStep {
  const factory RecordStep({
    int? id,
    required int recordId,
    required String stepName,
    required int stepOrder,
    @Default('pending') String stepStatus,
    @Default(null) DateTime? completedAt,
    String? note,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _RecordStep;

  factory RecordStep.fromJson(Map<String, dynamic> json) => _$RecordStepFromJson(json);
}