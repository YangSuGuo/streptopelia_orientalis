import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
import 'package:streptopelia_orientalis/data/drift/tables/media_files.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'media_file_dao.g.dart';

@DriftAccessor(tables: [MediaFiles])
class MediaFileDao extends DatabaseAccessor<AppDatabase> with _$MediaFileDaoMixin {
  MediaFileDao(super.db);

  Future<int> insertMediaFile(MediaFileEntity mediaFile) {
    return into(mediaFiles).insert(
      MediaFilesCompanion.insert(
        recordId: mediaFile.recordId,
        filePath: mediaFile.filePath,
        fileType: mediaFile.fileType,
        originalName: mediaFile.originalName,
        fileSize: mediaFile.fileSize,
        metadata: Value(mediaFile.metadata != null ? jsonEncode(mediaFile.metadata) : null),
      ),
    );
  }

  Future<void> deleteMediaFile(int id) {
    return (delete(mediaFiles)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<List<MediaFileEntity>> getMediaFilesByRecord(int recordId) async {
    final files = await (select(mediaFiles)..where((tbl) => tbl.recordId.equals(recordId))).get();
    return files
        .map(
          (file) => MediaFileEntity(
            id: file.id,
            recordId: file.recordId,
            filePath: file.filePath,
            fileType: file.fileType,
            originalName: file.originalName,
            fileSize: file.fileSize,
            metadata: file.metadata != null && file.metadata!.isNotEmpty
                ? Map.castFrom<dynamic, dynamic, String, dynamic>(jsonDecode(file.metadata!))
                : null,
            createdAt: file.createdAt,
          ),
        )
        .toList();
  }
}

@riverpod
MediaFileDao mediaFileDao(Ref ref) {
  final database = ref.read(databaseProvider);
  return MediaFileDao(database);
}
