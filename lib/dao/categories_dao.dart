import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/categories.dart';
import 'base_dao.dart';

part 'categories_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoriesDao extends DatabaseAccessor<AppDatabase> with _$CategoriesDaoMixin implements BaseDao<Categories, int> {
  CategoriesDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(CategoriesCompanion data) {
    return into(categories).insert(data);
  }

  @override
  Future<List<CategoriesData>> findAll() {
    return select(categories).get();
  }

  @override
  Future<CategoriesData?> findById(int id) {
    return (select(categories)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<CategoriesData>> findAllSortedByOrder() {
    return (select(categories)..orderBy([(t) => OrderingTerm(expression: t.sortOrder)])).get();
  }

  Future<List<CategoriesData>> searchCategories(String query) {
    return (select(categories)
          ..where((tbl) => tbl.name.like('%$query%') | tbl.description.like('%$query%')))
        .get();
  }

  @override
  Future<int> update(CategoriesCompanion data) {
    return (update(categories)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(categories)..where((tbl) => tbl.id.equals(id))).go();
  }
  
  Future<int> deleteAll() {
    return delete(categories).go();
  }
}