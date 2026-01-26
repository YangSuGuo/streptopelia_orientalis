import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_record.freezed.dart';
part 'media_record.g.dart';

@freezed
class MediaRecord with _$MediaRecord {
  const factory MediaRecord({
    int? id,
    required int projectId,
    required int recordId,
    required String storageRootDir,
    required String storageDir,
    required String metadata,
    required DateTime createdAt,
  }) = _MediaRecord;

  factory MediaRecord.fromJson(Map<String, dynamic> json) => _$MediaRecordFromJson(json);
}