// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomField _$CustomFieldFromJson(Map<String, dynamic> json) => _CustomField(
  id: (json['id'] as num?)?.toInt(),
  recordTypeId: (json['recordTypeId'] as num).toInt(),
  recordId: (json['recordId'] as num).toInt(),
  type: json['type'] as String,
  label: json['label'] as String,
  key: json['key'] as String,
  value: json['value'] as String,
  config: json['config'] as String?,
  isRequired: json['isRequired'] as bool? ?? false,
  sortOrder: (json['sortOrder'] as num?)?.toInt() ?? 0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$CustomFieldToJson(_CustomField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordTypeId': instance.recordTypeId,
      'recordId': instance.recordId,
      'type': instance.type,
      'label': instance.label,
      'key': instance.key,
      'value': instance.value,
      'config': instance.config,
      'isRequired': instance.isRequired,
      'sortOrder': instance.sortOrder,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
