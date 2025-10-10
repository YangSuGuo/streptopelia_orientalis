import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_entity.freezed.dart';
part 'record_entity.g.dart';

@freezed
abstract class RecordEntity with _$RecordEntity {
  const factory RecordEntity({
    required int id,
    required int recordTypeId,
    required String title,
    String? content,
    required Map<String, dynamic> metadata,
    int? categoryId,
    int? parentId,
    required String status,
    DateTime? startTime,
    DateTime? endTime,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _RecordEntity;

  factory RecordEntity.fromJson(Map<String, dynamic> json) => _$RecordEntityFromJson(json);
}

@freezed
abstract class RecordTypeEntity with _$RecordTypeEntity {
  const factory RecordTypeEntity({
    required int id,
    required String name,
    String? description,
    String? icon,
    String? color,
    required Map<String, dynamic> config,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _RecordTypeEntity;

  factory RecordTypeEntity.fromJson(Map<String, dynamic> json) => _$RecordTypeEntityFromJson(json);
}

@freezed
abstract class MediaFileEntity with _$MediaFileEntity {
  const factory MediaFileEntity({
    required int id,
    required int recordId,
    required String filePath,
    required String fileType,
    required String originalName,
    required int fileSize,
    required Map<String, dynamic> metadata,
    required DateTime createdAt,
  }) = _MediaFileEntity;

  factory MediaFileEntity.fromJson(Map<String, dynamic> json) => _$MediaFileEntityFromJson(json);
}