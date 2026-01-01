import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';

import '../tables/categories.dart';
import 'base_dao.dart';

part 'categories_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoriesDao extends DatabaseAccessor<AppDatabase> with _$CategoriesDaoMixin implements BaseDao<Categories, int, CategoriesCompanion> {
  CategoriesDao(super.db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(CategoriesCompanion data) {
    return into(categories).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(categories).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<Categories>> findAll() {
    return select(categories).get();
  }

  @override
  Future<Categories> findById(int id) {
    return (select(categories)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<Categories>> findAllSortedByOrder() {
    return (select(categories)..orderBy([(t) => OrderingTerm(expression: t.sortOrder)])).get();
  }

  Future<List<CategoriesData>> searchCategories(String query) {
    return (select(categories)
          ..where((tbl) => tbl.name.like('%$query%') | tbl.description.like('%$query%')))
        .get();
  }

  @override
  Future<int> update(int id, CategoriesCompanion data) {
    return (update(categories)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(categories)..where((tbl) => tbl.id.equals(id))).go();
  }
  
  Future<int> deleteAll() {
    return delete(categories).go();
  }
}