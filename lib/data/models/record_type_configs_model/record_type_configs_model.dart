import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_type_configs_model.freezed.dart';
part 'record_type_configs_model.g.dart';

@freezed
class RecordTypeConfigModel with _$RecordTypeConfigModel {
  const factory RecordTypeConfigModel({
    int? id,
    @JsonKey(name: 'record_type_id') required int recordTypeId,
    @JsonKey(name: 'config_key') required String configKey,
    @JsonKey(name: 'config_value') String? configValue,
    @JsonKey(name: 'config_type') String? configType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _RecordTypeConfigModel;

  factory RecordTypeConfigModel.fromJson(Map<String, dynamic> json) =>
      _$RecordTypeConfigModelFromJson(json);
}