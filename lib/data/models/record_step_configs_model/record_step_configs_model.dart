import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_step_configs_model.freezed.dart';
part 'record_step_configs_model.g.dart';

@freezed
class RecordStepConfigModel with _$RecordStepConfigModel {
  const factory RecordStepConfigModel({
    int? id,
    @JsonKey(name: 'record_type_id') required int recordTypeId,
    @JsonKey(name: 'step_name') required String stepName,
    @JsonKey(name: 'step_description') String? stepDescription,
    @JsonKey(name: 'step_order') required int stepOrder,
    @JsonKey(name: 'required') bool? required,
    @JsonKey(name: 'allow_skip') bool? allowSkip,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RecordStepConfigModel;

  factory RecordStepConfigModel.fromJson(Map<String, dynamic> json) =>
      _$RecordStepConfigModelFromJson(json);
}