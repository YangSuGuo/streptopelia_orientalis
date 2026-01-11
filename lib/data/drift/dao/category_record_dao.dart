import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/category_records.dart';

part 'category_record_dao.g.dart';

@DriftAccessor(tables: [CategoryRecords])
class CategoryRecordDao extends DatabaseAccessor<AppDatabase> with _$CategoryRecordDaoMixin {
  CategoryRecordDao(super.db);

  /// 插入新的分类记录关联数据
  Future<int> insertCategoryRecord(Insertable<CategoryRecord> categoryRecord) {
    return into(categoryRecords).insert(categoryRecord);
  }

  /// 获取所有分类记录关联数据
  Future<List<CategoryRecord>> getAllCategoryRecords() {
    return select(categoryRecords).get();
  }

  /// 根据ID获取分类记录关联数据
  Future<CategoryRecord?> getCategoryRecordById(int id) {
    return (select(categoryRecords)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  /// 根据分类ID获取关联的记录
  Future<List<CategoryRecord>> getCategoryRecordsByCategoryId(int categoryId) {
    return (select(categoryRecords)..where((tbl) => tbl.categoryId.equals(categoryId))).get();
  }

  /// 根据记录ID获取关联的分类
  Future<List<CategoryRecord>> getCategoryRecordsByRecordId(int recordId) {
    return (select(categoryRecords)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  /// 更新分类记录关联数据
  Future<int> updateCategoryRecord(CategoryRecord entry) {
    return (update(categoryRecords)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  /// 删除分类记录关联数据
  Future<int> deleteCategoryRecord(int id) {
    return (delete(categoryRecords)..where((tbl) => tbl.id.equals(id))).go();
  }

  /// 根据分类ID删除关联数据
  Future<int> deleteCategoryRecordsByCategoryId(int categoryId) {
    return (delete(categoryRecords)..where((tbl) => tbl.categoryId.equals(categoryId))).go();
  }

  /// 根据记录ID删除关联数据
  Future<int> deleteCategoryRecordsByRecordId(int recordId) {
    return (delete(categoryRecords)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}