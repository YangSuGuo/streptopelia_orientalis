import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/categories.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(super.db);

  Future<int> insertCategory(Insertable<Category> category) {
    return into(categories).insert(category);
  }

  Future<List<Category>> getAllCategories() {
    return select(categories).get();
  }

  Future<Category?> getCategoryById(int id) {
    return (select(categories)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateCategory(Category entry) {
    return (update(categories)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteCategory(int id) {
    return (delete(categories)..where((tbl) => tbl.id.equals(id))).go();
  }
}