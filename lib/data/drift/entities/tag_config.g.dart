// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TagConfig _$TagConfigFromJson(Map<String, dynamic> json) => _TagConfig(
  id: (json['id'] as num?)?.toInt(),
  recordTypeId: (json['recordTypeId'] as num).toInt(),
  tagName: json['tagName'] as String,
  tagColor: json['tagColor'] as String?,
  isPreset: json['isPreset'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$TagConfigToJson(_TagConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordTypeId': instance.recordTypeId,
      'tagName': instance.tagName,
      'tagColor': instance.tagColor,
      'isPreset': instance.isPreset,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
