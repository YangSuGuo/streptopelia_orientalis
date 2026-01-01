// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordStep _$RecordStepFromJson(Map<String, dynamic> json) => _RecordStep(
  id: (json['id'] as num?)?.toInt(),
  recordId: (json['recordId'] as num).toInt(),
  stepName: json['stepName'] as String,
  stepOrder: (json['stepOrder'] as num).toInt(),
  stepStatus: json['stepStatus'] as String? ?? 'pending',
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  note: json['note'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$RecordStepToJson(_RecordStep instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordId': instance.recordId,
      'stepName': instance.stepName,
      'stepOrder': instance.stepOrder,
      'stepStatus': instance.stepStatus,
      'completedAt': instance.completedAt?.toIso8601String(),
      'note': instance.note,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
