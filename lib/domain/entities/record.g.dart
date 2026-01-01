// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Record _$RecordFromJson(Map<String, dynamic> json) => _Record(
  id: (json['id'] as num?)?.toInt(),
  recordTypeId: (json['recordTypeId'] as num).toInt(),
  title: json['title'] as String,
  content: json['content'] as String?,
  metadata: json['metadata'] as String?,
  categoryId: (json['categoryId'] as num?)?.toInt(),
  parentId: (json['parentId'] as num?)?.toInt(),
  status: json['status'] as String? ?? 'active',
  startTime: json['startTime'] == null
      ? null
      : DateTime.parse(json['startTime'] as String),
  endTime: json['endTime'] == null
      ? null
      : DateTime.parse(json['endTime'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$RecordToJson(_Record instance) => <String, dynamic>{
  'id': instance.id,
  'recordTypeId': instance.recordTypeId,
  'title': instance.title,
  'content': instance.content,
  'metadata': instance.metadata,
  'categoryId': instance.categoryId,
  'parentId': instance.parentId,
  'status': instance.status,
  'startTime': instance.startTime?.toIso8601String(),
  'endTime': instance.endTime?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
