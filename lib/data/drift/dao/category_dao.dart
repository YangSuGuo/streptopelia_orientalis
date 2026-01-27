import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/category.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Category])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(super.db);

  Future<List<CategoryData>> getAllCategories() async {
    return await select(db.category).get();
  }

  Future<CategoryData?> getCategoryById(int id) async {
    return await (select(db.category)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertCategory(Insertable<CategoryData> category) async {
    return await into(db.category).insert(category);
  }

  Future<void> updateCategory(CategoryData category) async {
    await (update(db.category)..where((tbl) => tbl.id.equals(category.id))).write(category);
  }

  Future<void> deleteCategory(int id) async {
    await (delete(db.category)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllCategories() async {
    await delete(db.category).go();
  }
}
