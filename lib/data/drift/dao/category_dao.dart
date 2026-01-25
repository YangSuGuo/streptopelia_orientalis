import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/category.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Category])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(super.db);

  Future<int> insertCategory(Insertable<Category> category) {
    return into(category).insert(category);
  }

  Future<List<Category>> getAllCategories() {
    return select(category).get();
  }

  Future<Category?> getCategoryById(int id) {
    return (select(category)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateCategory(Category entry) {
    return (update(category)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteCategory(int id) {
    return (delete(category)..where((tbl) => tbl.id.equals(id))).go();
  }
}