import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/category_record.dart';
import 'base_dao.dart';

part 'category_record_dao.g.dart';

@DriftAccessor(tables: [CategoryRecords])
class CategoryRecordDao extends DatabaseAccessor<AppDatabase> implements BaseDao<CategoryRecord> {
  CategoryRecordDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(CategoryRecord entity) async {
    return into(categoryRecords).insert(CategoryRecordsCompanion.insert(
      categoryId: entity.categoryId,
      recordId: entity.recordId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(CategoryRecord entity) async {
    return update(categoryRecords).replace(CategoryRecordsCompanion(
      id: Value(entity.id!),
      categoryId: Value(entity.categoryId),
      recordId: Value(entity.recordId),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(categoryRecords)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<CategoryRecord>> findAll() async {
    return select(categoryRecords).get().then((rows) => rows.map((row) => CategoryRecord(
      id: row.id,
      categoryId: row.categoryId,
      recordId: row.recordId,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<CategoryRecord?> findById(int id) async {
    final result = await (select(categoryRecords)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return CategoryRecord(
      id: result.id,
      categoryId: result.categoryId,
      recordId: result.recordId,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}