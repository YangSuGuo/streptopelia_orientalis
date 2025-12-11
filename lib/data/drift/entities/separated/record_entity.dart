import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_entity.freezed.dart';
part 'record_entity.g.dart';

@freezed
abstract class RecordEntity with _$RecordEntity {
  const factory RecordEntity({
    int? id,
    required int recordTypeId,
    required String title,
    String? content,
    @JsonKey(fromJson: _metadataFromJson, toJson: _metadataToJson) Map<String, dynamic>? metadata,
    int? categoryId,
    int? parentId,
    required String status,
    DateTime? startTime,
    DateTime? endTime,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RecordEntity;

  factory RecordEntity.fromJson(Map<String, dynamic> json) => _$RecordEntityFromJson(json);
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