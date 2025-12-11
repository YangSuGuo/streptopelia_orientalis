import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_field_entity.freezed.dart';
part 'custom_field_entity.g.dart';

@freezed
abstract class CustomFieldEntity with _$CustomFieldEntity {
  const factory CustomFieldEntity({
    int? id,
    required int recordTypeId,
    required String fieldName,
    required String fieldType,
    required String fieldLabel,
    @JsonKey(fromJson: _configFromJson, toJson: _configToJson) Map<String, dynamic>? fieldConfig,
    bool? isRequired,
    int? sortOrder,
    DateTime? createdAt,
  }) = _CustomFieldEntity;

  factory CustomFieldEntity.fromJson(Map<String, dynamic> json) => _$CustomFieldEntityFromJson(json);
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