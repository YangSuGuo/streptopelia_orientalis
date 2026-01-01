// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordType _$RecordTypeFromJson(Map<String, dynamic> json) => _RecordType(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String,
  categoryId: (json['categoryId'] as num?)?.toInt(),
  description: json['description'] as String?,
  icon: json['icon'] as String?,
  color: json['color'] as String?,
  isEnabled: json['isEnabled'] as bool? ?? true,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  requirePhoto: json['requirePhoto'] as bool? ?? false,
  maxPhotos: (json['maxPhotos'] as num?)?.toInt() ?? 10,
  requireLocation: json['requireLocation'] as bool? ?? false,
  locationAccuracy: json['locationAccuracy'] as String? ?? 'high',
  locationTimeout: (json['locationTimeout'] as num?)?.toInt() ?? 30000,
  hasTimer: json['hasTimer'] as bool? ?? false,
  timerDuration: (json['timerDuration'] as num?)?.toInt() ?? 0,
  hasNotes: json['hasNotes'] as bool? ?? false,
  hasAttachments: json['hasAttachments'] as bool? ?? false,
  hasAudioRecording: json['hasAudioRecording'] as bool? ?? false,
  maxAudioDuration: (json['maxAudioDuration'] as num?)?.toInt() ?? 60000,
  hasVideoRecording: json['hasVideoRecording'] as bool? ?? false,
  maxVideoDuration: (json['maxVideoDuration'] as num?)?.toInt() ?? 60000,
  showDuration: json['showDuration'] as bool? ?? false,
  showStartTime: json['showStartTime'] as bool? ?? true,
  showEndTime: json['showEndTime'] as bool? ?? true,
  hasSubtasks: json['hasSubtasks'] as bool? ?? false,
  hasNumericValues: json['hasNumericValues'] as bool? ?? false,
  hasTextValues: json['hasTextValues'] as bool? ?? false,
  hasSelectionValues: json['hasSelectionValues'] as bool? ?? false,
  selectionOptions: json['selectionOptions'] as String?,
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
      'name': instance.name,
      'categoryId': instance.categoryId,
      'description': instance.description,
      'icon': instance.icon,
      'color': instance.color,
      'isEnabled': instance.isEnabled,
      'sortOrder': instance.sortOrder,
      'requirePhoto': instance.requirePhoto,
      'maxPhotos': instance.maxPhotos,
      'requireLocation': instance.requireLocation,
      'locationAccuracy': instance.locationAccuracy,
      'locationTimeout': instance.locationTimeout,
      'hasTimer': instance.hasTimer,
      'timerDuration': instance.timerDuration,
      'hasNotes': instance.hasNotes,
      'hasAttachments': instance.hasAttachments,
      'hasAudioRecording': instance.hasAudioRecording,
      'maxAudioDuration': instance.maxAudioDuration,
      'hasVideoRecording': instance.hasVideoRecording,
      'maxVideoDuration': instance.maxVideoDuration,
      'showDuration': instance.showDuration,
      'showStartTime': instance.showStartTime,
      'showEndTime': instance.showEndTime,
      'hasSubtasks': instance.hasSubtasks,
      'hasNumericValues': instance.hasNumericValues,
      'hasTextValues': instance.hasTextValues,
      'hasSelectionValues': instance.hasSelectionValues,
      'selectionOptions': instance.selectionOptions,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
