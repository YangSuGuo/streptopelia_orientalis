import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/category.dart';
import 'base_dao.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoryDao extends DatabaseAccessor<AppDatabase> implements BaseDao<Category> {
  CategoryDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(Category entity) async {
    return into(categories).insert(CategoriesCompanion.insert(
      name: entity.name,
      description: entity.description,
      color: entity.color,
      icon: entity.icon,
      sortOrder: entity.sortOrder,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(Category entity) async {
    return update(categories).replace(CategoriesCompanion(
      id: Value(entity.id!),
      name: Value(entity.name),
      description: Value(entity.description),
      color: Value(entity.color),
      icon: Value(entity.icon),
      sortOrder: Value(entity.sortOrder),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(categories)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<Category>> findAll() async {
    return select(categories).get().then((rows) => rows.map((row) => Category(
      id: row.id,
      name: row.name,
      description: row.description,
      color: row.color,
      icon: row.icon,
      sortOrder: row.sortOrder,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<Category?> findById(int id) async {
    final result = await (select(categories)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return Category(
      id: result.id,
      name: result.name,
      description: result.description,
      color: result.color,
      icon: result.icon,
      sortOrder: result.sortOrder,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}