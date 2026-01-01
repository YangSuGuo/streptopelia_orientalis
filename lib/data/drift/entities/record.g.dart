// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Record _$RecordFromJson(Map<String, dynamic> json) => _Record(
  id: (json['id'] as num?)?.toInt(),
  recordTypeId: (json['recordTypeId'] as num).toInt(),
  title: json['title'] as String?,
  content: json['content'] as String?,
  startTime: json['startTime'] == null
      ? null
      : DateTime.parse(json['startTime'] as String),
  endTime: json['endTime'] == null
      ? null
      : DateTime.parse(json['endTime'] as String),
  durationSeconds: (json['durationSeconds'] as num?)?.toInt(),
  locationName: json['locationName'] as String?,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  accuracy: (json['accuracy'] as num?)?.toDouble(),
  status: json['status'] as String? ?? 'draft',
  tagsJson: json['tagsJson'] as String?,
  metadataJson: json['metadataJson'] as String?,
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
  'startTime': instance.startTime?.toIso8601String(),
  'endTime': instance.endTime?.toIso8601String(),
  'durationSeconds': instance.durationSeconds,
  'locationName': instance.locationName,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'accuracy': instance.accuracy,
  'status': instance.status,
  'tagsJson': instance.tagsJson,
  'metadataJson': instance.metadataJson,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
