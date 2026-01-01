// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSetting _$UserSettingFromJson(Map<String, dynamic> json) => _UserSetting(
  id: (json['id'] as num?)?.toInt(),
  settingKey: json['settingKey'] as String,
  settingValue: json['settingValue'] as String,
  settingType: json['settingType'] as String? ?? 'string',
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserSettingToJson(_UserSetting instance) =>
    <String, dynamic>{
      'id': instance.id,
      'settingKey': instance.settingKey,
      'settingValue': instance.settingValue,
      'settingType': instance.settingType,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
