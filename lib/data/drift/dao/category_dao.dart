import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/category.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [CategoryTable])
class CategoryDao extends DatabaseAccessor<AppDatabase> with _$CategoryDaoMixin {
  CategoryDao(AppDatabase db) : super(db);

  Future<List<Category>> getAllCategories() async {
    final categories = await select(categoryTable).get();
    return categories.map((c) => Category(
      id: c.id,
      title: c.title,
      icon: c.icon,
      colorTheme: c.colorTheme,
    )).toList();
  }

  Future<Category?> getCategoryById(int id) async {
    final category = await (select(categoryTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (category == null) return null;
    return Category(
      id: category.id,
      title: category.title,
      icon: category.icon,
      colorTheme: category.colorTheme,
    );
  }

  Future<int> insertCategory(Category category) async {
    return await into(categoryTable).insert(CategoryTableCompanion.insert(
      title: category.title,
      icon: category.icon,
      colorTheme: category.colorTheme,
    ));
  }

  Future<void> updateCategory(Category category) async {
    await (update(categoryTable)..where((tbl) => tbl.id.equals(category.id!))).write(
      CategoryTableCompanion(
        title: Value(category.title),
        icon: Value(category.icon),
        colorTheme: Value(category.colorTheme),
      ),
    );
  }

  Future<void> deleteCategory(int id) async {
    await (delete(categoryTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}