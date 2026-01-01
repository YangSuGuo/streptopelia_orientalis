// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  color: json['color'] as String?,
  parentId: (json['parentId'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'color': instance.color,
  'parentId': instance.parentId,
  'sortOrder': instance.sortOrder,
  'createdAt': instance.createdAt?.toIso8601String(),
};
