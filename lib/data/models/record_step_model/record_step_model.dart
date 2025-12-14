import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_step_model.freezed.dart';
part 'record_step_model.g.dart';

@freezed
class RecordStepModel with _$RecordStepModel {
  const factory RecordStepModel({
    int? id,
    required int recordId,
    @Default('') String stepName,
    required int stepOrder,
    @Default('pending') String stepStatus,
    String? completedAt,
    String? note,
    @Default('') String createdAt,
  }) = _RecordStepModel;

  factory RecordStepModel.fromJson(Map<String, Object?> json) =>
      _$RecordStepModelFromJson(json);
}