import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_entity.freezed.dart';
part 'record_entity.g.dart';

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

@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    int? id,
    required String name,
    String? description,
    String? color,
    int? parentId,
    int? sortOrder,
    DateTime? createdAt,
  }) = _CategoryEntity;

  factory CategoryEntity.fromJson(Map<String, dynamic> json) => _$CategoryEntityFromJson(json);
}

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
