import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_file_entity.freezed.dart';
part 'media_file_entity.g.dart';

@freezed
abstract class MediaFileEntity with _$MediaFileEntity {
  const factory MediaFileEntity({
    int? id,
    required int recordId,
    required String filePath,
    required String fileType,
    required String originalName,
    required int fileSize,
    @JsonKey(fromJson: _metadataFromJson, toJson: _metadataToJson) Map<String, dynamic>? metadata,
    DateTime? createdAt,
  }) = _MediaFileEntity;

  factory MediaFileEntity.fromJson(Map<String, dynamic> json) => _$MediaFileEntityFromJson(json);
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