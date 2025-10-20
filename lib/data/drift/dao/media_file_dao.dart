import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
import 'package:streptopelia_orientalis/data/drift/tables/media_files.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

part 'media_file_dao.g.dart';

/// DAO类用于管理媒体文件数据访问
/// 提供媒体文件的增删查功能
@DriftAccessor(tables: [MediaFiles])
class MediaFileDao extends DatabaseAccessor<AppDatabase> with _$MediaFileDaoMixin {
  /// 构造函数，初始化数据库访问器
  MediaFileDao(super.db);

  /// 插入一个新的媒体文件记录
  /// 
  /// [mediaFile] 要插入的媒体文件实体
  /// 返回插入记录的ID
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

  /// 根据ID删除媒体文件记录
  /// 
  /// [id] 要删除的媒体文件ID
  Future<void> deleteMediaFile(int id) {
    return (delete(mediaFiles)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录ID获取所有相关的媒体文件
  /// 
  /// [recordId] 关联的记录ID
  /// 返回媒体文件实体列表
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

/// Riverpod provider用于获取MediaFileDao实例
@riverpod
MediaFileDao mediaFileDao(Ref ref) {
  final database = ref.read(databaseProvider);
  return MediaFileDao(database);
}
