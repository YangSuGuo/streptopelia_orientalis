import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/media_record.dart';

part 'media_record_dao.g.dart';

@DriftAccessor(tables: [MediaRecord])
class MediaRecordDao extends DatabaseAccessor<AppDatabase> with _$MediaRecordDaoMixin {
  MediaRecordDao(super.db);

  Future<List<MediaRecordData>> getAllMediaRecords() async {
    return await select(db.mediaRecord).get();
  }

  Future<MediaRecordData?> getMediaRecordById(int id) async {
    return await (select(db.mediaRecord)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertMediaRecord(Insertable<MediaRecordData> mediaRecord) async {
    return await into(db.mediaRecord).insert(mediaRecord);
  }

  Future<void> updateMediaRecord(MediaRecordData mediaRecord) async {
    await (update(db.mediaRecord)..where((tbl) => tbl.id.equals(mediaRecord.id))).write(mediaRecord);
  }

  Future<void> deleteMediaRecord(int id) async {
    await (delete(db.mediaRecord)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllMediaRecords() async {
    await delete(db.mediaRecord).go();
  }
}