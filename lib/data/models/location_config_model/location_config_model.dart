import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_config_model.freezed.dart';
part 'location_config_model.g.dart';

@freezed
class LocationConfigModel with _$LocationConfigModel {
  const factory LocationConfigModel({
    int? id,
    @JsonKey(name: 'record_type_id') required int recordTypeId,
    @JsonKey(name: 'require_location') bool? requireLocation,
    @JsonKey(name: 'location_accuracy') String? locationAccuracy,
    @JsonKey(name: 'location_timeout') int? locationTimeout,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _LocationConfigModel;

  factory LocationConfigModel.fromJson(Map<String, dynamic> json) =>
      _$LocationConfigModelFromJson(json);
}