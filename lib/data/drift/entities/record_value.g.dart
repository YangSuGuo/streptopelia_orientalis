// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordValue _$RecordValueFromJson(Map<String, dynamic> json) => _RecordValue(
  id: (json['id'] as num?)?.toInt(),
  recordId: (json['recordId'] as num).toInt(),
  fieldName: json['fieldName'] as String,
  fieldValue: (json['fieldValue'] as num?)?.toDouble(),
  fieldTextValue: json['fieldTextValue'] as String?,
  fieldType: json['fieldType'] as String? ?? 'numeric',
  unit: json['unit'] as String?,
  valueType: json['valueType'] as String? ?? 'decimal',
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$RecordValueToJson(_RecordValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordId': instance.recordId,
      'fieldName': instance.fieldName,
      'fieldValue': instance.fieldValue,
      'fieldTextValue': instance.fieldTextValue,
      'fieldType': instance.fieldType,
      'unit': instance.unit,
      'valueType': instance.valueType,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
