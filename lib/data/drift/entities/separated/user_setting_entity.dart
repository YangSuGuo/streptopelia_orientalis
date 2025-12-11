import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_setting_entity.freezed.dart';
part 'user_setting_entity.g.dart';

@freezed
abstract class UserSettingEntity with _$UserSettingEntity {
  const factory UserSettingEntity({
    int? id,
    required String settingKey,
    required String settingValue,
    String? settingType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserSettingEntity;

  factory UserSettingEntity.fromJson(Map<String, dynamic> json) => _$UserSettingEntityFromJson(json);
}

// JSON 转换辅助函数
Map<String, dynamic>? _configFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) {
    try {
      return json.isEmpty ? null : Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(json));
    } catch (e) {
      return null;
    }
  } else if (json is Map<String, dynamic>) {
    return json;
  }
  return null;
}

String? _configToJson(Map<String, dynamic>? config) {
  if (config == null) return null;
  return jsonEncode(config);
}