// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PhotoConfig _$PhotoConfigFromJson(Map<String, dynamic> json) => _PhotoConfig(
  id: (json['id'] as num?)?.toInt(),
  recordTypeId: (json['recordTypeId'] as num).toInt(),
  maxPhotos: (json['maxPhotos'] as num?)?.toInt() ?? 10,
  requirePhoto: json['requirePhoto'] as bool? ?? false,
  photoQuality: json['photoQuality'] as String? ?? 'medium',
  allowMultiple: json['allowMultiple'] as bool? ?? true,
  enableThumbnail: json['enableThumbnail'] as bool? ?? true,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$PhotoConfigToJson(_PhotoConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordTypeId': instance.recordTypeId,
      'maxPhotos': instance.maxPhotos,
      'requirePhoto': instance.requirePhoto,
      'photoQuality': instance.photoQuality,
      'allowMultiple': instance.allowMultiple,
      'enableThumbnail': instance.enableThumbnail,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
