import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/category.dart';
import '../tables/category.dart' as t;

part 'category_dao.g.dart';

@DriftAccessor(tables: [t.Category])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(AppDatabase db) : super(db);

  Future<List<Category>> getAllCategories() async {
    return await select(t.Category).get();
  }

  Future<Category?> getCategoryById(int id) async {
    return await (select(t.Category)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertCategory(Insertable<Category> category) async {
    return await into(t.Category).insert(category);
  }

  Future<void> updateCategory(Category category) async {
    return await (update(t.Category)..where((tbl) => tbl.id.equals(category.id!))).write(category);
  }

  Future<void> deleteCategory(int id) async {
    await (delete(t.Category)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllCategories() async {
    await delete(t.Category).go();
  }
}