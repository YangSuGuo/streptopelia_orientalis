import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_tag.dart';
import '../tables/record_tag.dart' as t;

part 'record_tag_dao.g.dart';

@DriftAccessor(tables: [t.RecordTag])
class RecordTagDao extends DatabaseAccessor<AppDatabase> with _$RecordTagDaoMixin {
  RecordTagDao(AppDatabase db) : super(db);

  Future<List<RecordTag>> getAllRecordTags() async {
    return await select(t.RecordTag).get();
  }

  Future<RecordTag?> getRecordTagById(int id) async {
    return await (select(t.RecordTag)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordTag(Insertable<RecordTag> recordTag) async {
    return await into(t.RecordTag).insert(recordTag);
  }

  Future<void> updateRecordTag(RecordTag recordTag) async {
    return await (update(t.RecordTag)..where((tbl) => tbl.id.equals(recordTag.id!))).write(recordTag);
  }

  Future<void> deleteRecordTag(int id) async {
    await (delete(t.RecordTag)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllRecordTags() async {
    await delete(t.RecordTag).go();
  }

  Future<List<RecordTag>> getRecordTagsByRecord(int recordId) async {
    return await (select(t.RecordTag)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordTag>> getRecordTagsByTag(int tagId) async {
    return await (select(t.RecordTag)..where((tbl) => tbl.tagId.equals(tagId))).get();
  }

  Future<List<RecordTag>> getRecordTagsByProject(int projectId) async {
    return await (select(t.RecordTag)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }
}