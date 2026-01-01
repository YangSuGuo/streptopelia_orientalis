// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_type_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordTypeConfig _$RecordTypeConfigFromJson(Map<String, dynamic> json) =>
    _RecordTypeConfig(
      id: (json['id'] as num?)?.toInt(),
      recordTypeId: (json['recordTypeId'] as num).toInt(),
      configKey: json['configKey'] as String,
      configValue: json['configValue'] as String?,
      configType: json['configType'] as String? ?? 'string',
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$RecordTypeConfigToJson(_RecordTypeConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordTypeId': instance.recordTypeId,
      'configKey': instance.configKey,
      'configValue': instance.configValue,
      'configType': instance.configType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
