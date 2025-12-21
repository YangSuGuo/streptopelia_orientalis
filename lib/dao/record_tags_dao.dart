import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_tags.dart';
import 'base_dao.dart';

part 'record_tags_dao.g.dart';

@DriftAccessor(tables: [RecordTags])
class RecordTagsDao extends DatabaseAccessor<AppDatabase> with _$RecordTagsDaoMixin implements BaseDao<RecordTags, int, RecordTagsCompanion> {
  RecordTagsDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(RecordTagsCompanion data) {
    return into(recordTags).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(recordTags).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<RecordTagsData>> findAll() {
    return select(recordTags).get();
  }

  @override
  Future<RecordTagsData?> findById(int id) {
    return (select(recordTags)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordTagsData>> findTagsByRecord(int recordId) {
    return (select(recordTags)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<String>> findTagNamesByRecord(int recordId) async {
    final tags = await findTagsByRecord(recordId);
    return tags.map((tag) => tag.tagName).toList();
  }

  Future<List<RecordTagsData>> findRecordsByTagName(String tagName) {
    return (select(recordTags)..where((tbl) => tbl.tagName.equals(tagName))).get();
  }

  @override
  Future<int> update(int id, RecordTagsCompanion data) {
    return (update(recordTags)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordTags)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteTagsByRecord(int recordId) {
    return (delete(recordTags)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }

  Future<int> deleteTagsByTagName(String tagName) {
    return (delete(recordTags)..where((tbl) => tbl.tagName.equals(tagName))).go();
  }
  
  Future<int> deleteAll() {
    return delete(recordTags).go();
  }
}