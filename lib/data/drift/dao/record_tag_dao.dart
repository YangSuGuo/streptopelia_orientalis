import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_tags.dart';

part 'record_tag_dao.g.dart';

@DriftAccessor(tables: [RecordTags])
class RecordTagDao extends DatabaseAccessor<AppDatabase> with _$RecordTagDaoMixin {
  RecordTagDao(super.db);

  /// 插入新的记录标签数据
  Future<int> insertRecordTag(Insertable<RecordTag> recordTag) {
    return into(recordTags).insert(recordTag);
  }

  /// 获取所有记录标签数据
  Future<List<RecordTag>> getAllRecordTags() {
    return select(recordTags).get();
  }

  /// 根据ID获取记录标签数据
  Future<RecordTag?> getRecordTagById(int id) {
    return (select(recordTags)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录ID获取标签列表
  Future<List<RecordTag>> getRecordTagsByRecordId(int recordId) {
    return (select(recordTags)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  /// 根据标签名获取标签
  Future<List<RecordTag>> getRecordTagsByTagName(String tagName) {
    return (select(recordTags)..where((tbl) => tbl.tagName.equals(tagName))).get();
  }

  /// 更新记录标签数据
  Future<int> updateRecordTag(RecordTag entry) {
    return (update(recordTags)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除记录标签数据
  Future<int> deleteRecordTag(int id) {
    return (delete(recordTags)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录ID删除所有标签
  Future<int> deleteRecordTagsByRecordId(int recordId) {
    return (delete(recordTags)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }

  /// 根据标签名删除标签
  Future<int> deleteRecordTagsByTagName(String tagName) {
    return (delete(recordTags)..where((tbl) => tbl.tagName.equals(tagName))).go();
  }
}