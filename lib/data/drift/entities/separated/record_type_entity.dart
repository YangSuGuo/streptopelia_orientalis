import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_type_entity.freezed.dart';
part 'record_type_entity.g.dart';

@freezed
abstract class RecordTypeEntity with _$RecordTypeEntity {
  const factory RecordTypeEntity({
    int? id,
    required String name,
    String? description,
    String? icon,
    String? color,
    @JsonKey(fromJson: _configFromJson, toJson: _configToJson) Map<String, dynamic>? config,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RecordTypeEntity;

  factory RecordTypeEntity.fromJson(Map<String, dynamic> json) => _$RecordTypeEntityFromJson(json);
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