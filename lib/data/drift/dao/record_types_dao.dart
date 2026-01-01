import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_types.dart';
import 'base_dao.dart';

part 'record_types_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypesDao extends DatabaseAccessor<AppDatabase> with _$RecordTypesDaoMixin implements BaseDao<RecordTypes, int, RecordTypesCompanion> {
  RecordTypesDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(RecordTypesCompanion data) {
    return into(recordTypes).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(recordTypes).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<RecordTypesData>> findAll() {
    return select(recordTypes).get();
  }

  @override
  Future<RecordTypesData?> findById(int id) {
    return (select(recordTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordTypesData>> findEnabledRecordTypes() {
    return (select(recordTypes)..where((tbl) => tbl.isEnabled.equals(true))).get();
  }

  Future<List<RecordTypesData>> findRecordTypesByCategory(int? categoryId) {
    if (categoryId == null) {
      return (select(recordTypes)..where((tbl) => tbl.categoryId.isNull())).get();
    } else {
      return (select(recordTypes)..where((tbl) => tbl.categoryId.equals(categoryId))).get();
    }
  }

  Future<List<RecordTypesData>> searchRecordTypes(String query) {
    return (select(recordTypes)
          ..where((tbl) => tbl.name.like('%$query%') | tbl.description.like('%$query%')))
        .get();
  }

  @override
  Future<int> update(int id, RecordTypesCompanion data) {
    return (update(recordTypes)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }
  
  Future<int> deleteAll() {
    return delete(recordTypes).go();
  }
}