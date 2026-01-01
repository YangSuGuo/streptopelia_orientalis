// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MediaFile _$MediaFileFromJson(Map<String, dynamic> json) => _MediaFile(
  id: (json['id'] as num?)?.toInt(),
  recordId: (json['recordId'] as num).toInt(),
  filePath: json['filePath'] as String,
  fileType: json['fileType'] as String,
  originalName: json['originalName'] as String,
  fileSize: (json['fileSize'] as num).toInt(),
  metadata: json['metadata'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$MediaFileToJson(_MediaFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordId': instance.recordId,
      'filePath': instance.filePath,
      'fileType': instance.fileType,
      'originalName': instance.originalName,
      'fileSize': instance.fileSize,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
