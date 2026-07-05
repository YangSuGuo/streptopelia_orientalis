import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/category.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Category])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(super.db);

  Future<List<CategoryData>> getAllCategories() async {
    return await select(db.category).get();
  }

  Stream<List<CategoryData>> watchAllCategories() {
    return select(db.category).watch();
  }

  Future<CategoryData?> getCategoryById(int id) async {
    return await (select(db.category)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertCategory(CategoryCompanion category) async {
    return await into(db.category).insert(category);
  }

  Future<void> updateCategory(CategoryCompanion category) async {
    await (update(db.category)..where((tbl) => tbl.id.equals(category.id.value))).write(category);
  }

  Future<void> deleteCategory(int id) async {
    await (delete(db.category)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllCategories() async {
    await delete(db.category).go();
  }
}
