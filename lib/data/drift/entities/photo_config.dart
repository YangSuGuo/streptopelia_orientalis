import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo_config.freezed.dart';
part 'photo_config.g.dart';

@freezed
class PhotoConfig with _$PhotoConfig {
  const factory PhotoConfig({
    int? id,
    required int recordTypeId,
    @Default(10) int maxPhotos,
    @Default(false) bool requirePhoto,
    @Default('medium') String photoQuality,
    @Default(true) bool allowMultiple,
    @Default(true) bool enableThumbnail,
    @Default(DateTime.now()) DateTime createdAt,
  }) = _PhotoConfig;

  factory PhotoConfig.fromJson(Map<String, dynamic> json) => _$PhotoConfigFromJson(json);
}