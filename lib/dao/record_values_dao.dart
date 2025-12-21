import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_values.dart';
import 'base_dao.dart';

part 'record_values_dao.g.dart';

@DriftAccessor(tables: [RecordValues])
class RecordValuesDao extends DatabaseAccessor<AppDatabase> with _$RecordValuesDaoMixin implements BaseDao<RecordValues, int, RecordValuesCompanion> {
  RecordValuesDao(AppDatabase db) : super(db);

  @override
  AppDatabase get db => this.db;

  @override
  Future<int> insert(RecordValuesCompanion data) {
    return into(recordValues).insert(data);
  }

  @override
  Future<List<Map<String, dynamic>>> findAllRaw() {
    return select(recordValues).get().then((list) => list.map((item) => item.toJson()).toList());
  }

  @override
  Future<List<RecordValuesData>> findAll() {
    return select(recordValues).get();
  }

  @override
  Future<RecordValuesData?> findById(int id) {
    return (select(recordValues)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordValuesData>> findValuesByRecord(int recordId) {
    return (select(recordValues)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordValuesData>> findValuesByRecordAndField(int recordId, String fieldName) {
    return (select(recordValues)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.fieldName.equals(fieldName)))
        .get();
  }

  Future<List<RecordValuesData>> findNumericValuesByRecord(int recordId) {
    return (select(recordValues)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.fieldType.equals('numeric')))
        .get();
  }

  Future<List<RecordValuesData>> findTextValuesByRecord(int recordId) {
    return (select(recordValues)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.fieldType.equals('text')))
        .get();
  }

  @override
  Future<int> update(int id, RecordValuesCompanion data) {
    return (update(recordValues)..where((tbl) => tbl.id.equals(id))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordValues)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteValuesByRecord(int recordId) {
    return (delete(recordValues)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }

  Future<int> deleteValuesByField(int recordId, String fieldName) {
    return (delete(recordValues)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.fieldName.equals(fieldName)))
        .go();
  }
  
  Future<int> deleteAll() {
    return delete(recordValues).go();
  }
}