import 'package:drift/drift.dart';

import '../../../domain/entitie/media_record.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class MediaRecordConverter extends EntityConverter<MediaRecord, MediaRecordData> {
  @override
  MediaRecord toEntity(MediaRecordData data) {
    return MediaRecord(
      id: data.id,
      projectId: data.projectId,
      recordId: data.recordId,
      storageRootDir: data.storageRootDir,
      storageDir: data.storageDir,
      metadata: data.metadata,
      createdAt: data.createdAt,
    );
  }

  @override
  MediaRecordCompanion toCompanion(MediaRecord entity) {
    return MediaRecordCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      recordId: Value(entity.recordId),
      storageRootDir: Value(entity.storageRootDir),
      storageDir: Value(entity.storageDir),
      metadata: Value(entity.metadata),
      createdAt: Value(entity.createdAt),
    );
  }

  @override
  MediaRecordCompanion createInsertCompanion(MediaRecord entity) {
    return MediaRecordCompanion.insert(
      projectId: entity.projectId,
      recordId: entity.recordId,
      storageRootDir: entity.storageRootDir,
      storageDir: entity.storageDir,
      metadata: entity.metadata,
      createdAt: entity.createdAt,
    );
  }
}
