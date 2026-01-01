// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_value_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordValueConfig _$RecordValueConfigFromJson(Map<String, dynamic> json) =>
    _RecordValueConfig(
      id: (json['id'] as num?)?.toInt(),
      recordTypeId: (json['recordTypeId'] as num).toInt(),
      fieldName: json['fieldName'] as String,
      fieldLabel: json['fieldLabel'] as String?,
      fieldType: json['fieldType'] as String? ?? 'numeric',
      unit: json['unit'] as String?,
      minValue: (json['minValue'] as num?)?.toDouble(),
      maxValue: (json['maxValue'] as num?)?.toDouble(),
      defaultValue: (json['defaultValue'] as num?)?.toDouble(),
      selectionOptions: json['selectionOptions'] as String?,
      isRequired: json['isRequired'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$RecordValueConfigToJson(_RecordValueConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordTypeId': instance.recordTypeId,
      'fieldName': instance.fieldName,
      'fieldLabel': instance.fieldLabel,
      'fieldType': instance.fieldType,
      'unit': instance.unit,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'defaultValue': instance.defaultValue,
      'selectionOptions': instance.selectionOptions,
      'isRequired': instance.isRequired,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
