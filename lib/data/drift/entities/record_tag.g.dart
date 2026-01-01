// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordTag _$RecordTagFromJson(Map<String, dynamic> json) => _RecordTag(
  id: (json['id'] as num?)?.toInt(),
  recordId: (json['recordId'] as num).toInt(),
  tagName: json['tagName'] as String,
  tagColor: json['tagColor'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$RecordTagToJson(_RecordTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordId': instance.recordId,
      'tagName': instance.tagName,
      'tagColor': instance.tagColor,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
