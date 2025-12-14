import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_value_configs_model.freezed.dart';
part 'record_value_configs_model.g.dart';

@freezed
class RecordValueConfigModel with _$RecordValueConfigModel {
  const factory RecordValueConfigModel({
    int? id,
    @JsonKey(name: 'record_type_id') required int recordTypeId,
    @JsonKey(name: 'field_name') required String fieldName,
    @JsonKey(name: 'field_label') String? fieldLabel,
    @JsonKey(name: 'unit') String? unit,
    @JsonKey(name: 'min_value') double? minValue,
    @JsonKey(name: 'max_value') double? maxValue,
    @JsonKey(name: 'default_value') double? defaultValue,
    @JsonKey(name: 'is_required') bool? isRequired,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RecordValueConfigModel;

  factory RecordValueConfigModel.fromJson(Map<String, dynamic> json) =>
      _$RecordValueConfigModelFromJson(json);
}