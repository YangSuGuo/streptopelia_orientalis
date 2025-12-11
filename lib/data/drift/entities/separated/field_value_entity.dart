import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_value_entity.freezed.dart';
part 'field_value_entity.g.dart';

@freezed
abstract class FieldValueEntity with _$FieldValueEntity {
  const factory FieldValueEntity({
    int? id,
    required int recordId,
    required int customFieldId,
    required String fieldValue,
    DateTime? createdAt,
  }) = _FieldValueEntity;

  factory FieldValueEntity.fromJson(Map<String, dynamic> json) => _$FieldValueEntityFromJson(json);
}

// JSON 转换辅助函数
Map<String, dynamic>? _metadataFromJson(dynamic json) {
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

String? _metadataToJson(Map<String, dynamic>? metadata) {
  if (metadata == null) return null;
  return jsonEncode(metadata);
}