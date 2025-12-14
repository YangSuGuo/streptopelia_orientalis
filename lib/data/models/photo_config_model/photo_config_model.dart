import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_config_model.freezed.dart';
part 'photo_config_model.g.dart';

@freezed
class PhotoConfigModel with _$PhotoConfigModel {
  const factory PhotoConfigModel({
    int? id,
    @JsonKey(name: 'record_type_id') required int recordTypeId,
    @JsonKey(name: 'max_photos') int? maxPhotos,
    @JsonKey(name: 'require_photo') bool? requirePhoto,
    @JsonKey(name: 'photo_quality') String? photoQuality,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _PhotoConfigModel;

  factory PhotoConfigModel.fromJson(Map<String, dynamic> json) =>
      _$PhotoConfigModelFromJson(json);
}