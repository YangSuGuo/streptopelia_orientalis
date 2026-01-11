import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/categories.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(super.db);

  // Create
  Future<int> insertCategory(Insertable<CategoriesData> category) {
    return into(categories).insert(category);
  }

  // Read - Get all categories
  Future<List<Category>> getAllCategories() {
    return select(categories).get();
  }

  // Read - Get category by ID
  Future<Category?> getCategoryById(int id) {
    return (select(categories)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  // Update
  Future<int> updateCategory(Category entry) {
    return (update(categories)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  // Delete
  Future<int> deleteCategory(int id) {
    return (delete(categories)..where((tbl) => tbl.id.equals(id))).go();
  }
}