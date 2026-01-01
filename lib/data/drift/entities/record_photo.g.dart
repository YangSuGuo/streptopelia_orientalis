// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordPhoto _$RecordPhotoFromJson(Map<String, dynamic> json) => _RecordPhoto(
  id: (json['id'] as num?)?.toInt(),
  recordId: (json['recordId'] as num).toInt(),
  photoPath: json['photoPath'] as String?,
  photoUrl: json['photoUrl'] as String?,
  thumbnailPath: json['thumbnailPath'] as String?,
  description: json['description'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  fileSize: (json['fileSize'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$RecordPhotoToJson(_RecordPhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordId': instance.recordId,
      'photoPath': instance.photoPath,
      'photoUrl': instance.photoUrl,
      'thumbnailPath': instance.thumbnailPath,
      'description': instance.description,
      'width': instance.width,
      'height': instance.height,
      'fileSize': instance.fileSize,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
