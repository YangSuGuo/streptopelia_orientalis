// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordType _$RecordTypeFromJson(Map<String, dynamic> json) => _RecordType(
  id: (json['id'] as num?)?.toInt(),
  categoryId: (json['categoryId'] as num?)?.toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  icon: json['icon'] as String?,
  color: json['color'] as String?,
  config: json['config'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$RecordTypeToJson(_RecordType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'color': instance.color,
      'config': instance.config,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
