// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_step_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordStepConfig _$RecordStepConfigFromJson(Map<String, dynamic> json) =>
    _RecordStepConfig(
      id: (json['id'] as num?)?.toInt(),
      recordTypeId: (json['recordTypeId'] as num).toInt(),
      stepName: json['stepName'] as String,
      stepDescription: json['stepDescription'] as String?,
      stepOrder: (json['stepOrder'] as num).toInt(),
      required: json['required'] as bool? ?? false,
      allowSkip: json['allowSkip'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$RecordStepConfigToJson(_RecordStepConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordTypeId': instance.recordTypeId,
      'stepName': instance.stepName,
      'stepDescription': instance.stepDescription,
      'stepOrder': instance.stepOrder,
      'required': instance.required,
      'allowSkip': instance.allowSkip,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
