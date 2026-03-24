import 'package:drift/drift.dart';

import '../../app_database.dart';
import '../../tables/media_record.dart';

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

  Future<int> insertMediaRecord(MediaRecordCompanion mediaRecord) async {
    return await into(db.mediaRecord).insert(mediaRecord);
  }

  Future<void> updateMediaRecord(MediaRecordCompanion mediaRecord) async {
    await (update(db.mediaRecord)..where((tbl) => tbl.id.equals(mediaRecord.id.value))).write(mediaRecord);
  }

  Future<void> updateMediaRecordByRecordId(MediaRecordCompanion mediaRecord) async {
    await (update(db.mediaRecord)..where((tbl) => tbl.id.equals(mediaRecord.recordId.value))).write(mediaRecord);
  }

  Future<void> deleteMediaRecord(int id) async {
    await (delete(db.mediaRecord)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteMediaRecordByRecordId(int id) async {
    await (delete(db.mediaRecord)..where((tbl) => tbl.recordId.equals(id))).go();
  }

  Future<void> deleteAllMediaRecords() async {
    await delete(db.mediaRecord).go();
  }
}
