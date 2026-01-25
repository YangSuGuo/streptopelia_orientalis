import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_tag.dart';

part 'record_tag_dao.g.dart';

@DriftAccessor(tables: [RecordTag])
class RecordTagDao extends DatabaseAccessor<AppDatabase> with _$RecordTagDaoMixin {
  RecordTagDao(super.db);

  /// 插入新的记录标签数据
  Future<int> insertRecordTag(Insertable<RecordTag> recordTag) {
    return into(recordTag).insert(recordTag);
  }

  /// 获取所有记录标签数据
  Future<List<RecordTag>> getAllRecordTags() {
    return select(recordTag).get();
  }

  /// 根据ID获取记录标签数据
  Future<RecordTag?> getRecordTagById(int id) {
    return (select(recordTag)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据记录ID获取标签列表
  Future<List<RecordTag>> getRecordTagsByRecordId(int recordId) {
    return (select(recordTag)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  /// 根据项目ID获取标签列表
  Future<List<RecordTag>> getRecordTagsByProjectId(int projectId) {
    return (select(recordTag)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  /// 更新记录标签数据
  Future<int> updateRecordTag(RecordTag entry) {
    return (update(recordTag)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除记录标签数据
  Future<int> deleteRecordTag(int id) {
    return (delete(recordTag)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据记录ID删除所有标签
  Future<int> deleteRecordTagsByRecordId(int recordId) {
    return (delete(recordTag)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }

  /// 根据项目ID删除所有标签
  Future<int> deleteRecordTagsByProjectId(int projectId) {
    return (delete(recordTag)..where((tbl) => tbl.projectId.equals(projectId))).go();
  }
}