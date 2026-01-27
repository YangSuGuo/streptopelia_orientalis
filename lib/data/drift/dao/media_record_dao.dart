import 'package:drift/drift.dart';
import '../tables/media_record.dart' as t;
import '../entities/media_record.dart';

part 'media_record_dao.g.dart';

@DriftAccessor(tables: [t.MediaRecord])
class MediaRecordDao extends DatabaseAccessor<t.MediaRecordDB> with _$MediaRecordDaoMixin {
  MediaRecordDao(t.MediaRecordDB attachedDatabase) : super(attachedDatabase);

  // 插入新的媒体记录
  Future<int> insertMediaRecord(MediaRecord data) async {
    return await into(t.mediaRecord).insert(
      t.MediaRecordCompanion.insert(
        projectId: data.projectId,
        recordId: data.recordId,
        storageRootDir: data.storageRootDir,
        storageDir: data.storageDir,
        metadata: data.metadata,
        createdAt: data.createdAt,
      ),
    );
  }

  // 根据ID获取媒体记录
  Future<MediaRecord?> getMediaRecordById(int id) async {
    final record = await select(t.mediaRecord).where((tbl) => tbl.id.equals(id)).getSingleOrNull();
    return record != null ? MediaRecord.fromJson(record.toJson()) : null;
  }

  // 根据记录ID获取媒体记录
  Future<List<MediaRecord>> getMediaRecordsByRecordId(int recordId) async {
    final records = await (select(t.mediaRecord)..where((tbl) => tbl.recordId.equals(recordId))).get();
    return records.map((record) => MediaRecord.fromJson(record.toJson())).toList();
  }
  
  // 获取指定项目的所有媒体记录
  Future<List<MediaRecord>> getMediaRecordsByProjectId(int projectId) async {
    final records = await (select(t.mediaRecord)..where((tbl) => tbl.projectId.equals(projectId))).get();
    return records.map((record) => MediaRecord.fromJson(record.toJson())).toList();
  }

  // 更新媒体记录
  Future<int> updateMediaRecord(int id, MediaRecord data) async {
    return await update(t.mediaRecord).replace(
      t.MediaRecordCompanion(
        id: Value(id),
        projectId: Value(data.projectId),
        recordId: Value(data.recordId),
        storageRootDir: Value(data.storageRootDir),
        storageDir: Value(data.storageDir),
        metadata: Value(data.metadata),
        createdAt: Value(data.createdAt),
      ),
    );
  }

  // 删除媒体记录
  Future<int> deleteMediaRecord(int id) async {
    return await delete(t.mediaRecord).deleteWhere((tbl) => tbl.id.equals(id));
  }

  // 删除指定项目的全部媒体记录
  Future<int> deleteAllMediaRecordsByProjectId(int projectId) async {
    return await delete(t.mediaRecord).deleteWhere((tbl) => tbl.projectId.equals(projectId));
  }

  // 删除指定记录的全部媒体记录
  Future<int> deleteAllMediaRecordsByRecordId(int recordId) async {
    return await delete(t.mediaRecord).deleteWhere((tbl) => tbl.recordId.equals(recordId));
  }
}