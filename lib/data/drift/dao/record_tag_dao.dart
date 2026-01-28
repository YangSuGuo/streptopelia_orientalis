import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_tag.dart';

part 'record_tag_dao.g.dart';

@DriftAccessor(tables: [RecordTag])
class RecordTagDao extends DatabaseAccessor<AppDatabase> with _$RecordTagDaoMixin {
  RecordTagDao(super.db);

  Future<List<RecordTagData>> getAllRecordTags() async {
    return await select(db.recordTag).get();
  }

  Future<RecordTagData?> getRecordTagById(int id) async {
    return await (select(db.recordTag)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordTag(Insertable<RecordTagData> recordTag) async {
    return await into(db.recordTag).insert(recordTag);
  }

  Future<void> updateRecordTag(RecordTagData recordTag) async {
    await (update(db.recordTag)..where((tbl) => tbl.id.equals(recordTag.id))).write(recordTag);
  }

  Future<void> deleteRecordTag(int id) async {
    await (delete(db.recordTag)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllRecordTags() async {
    await delete(db.recordTag).go();
  }
}