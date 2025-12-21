import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_value_configs.dart';
import 'base_dao.dart';

part 'record_value_configs_dao.g.dart';

@DriftAccessor(tables: [RecordValueConfigs])
class RecordValueConfigsDao extends DatabaseAccessor<AppDatabase> with _$RecordValueConfigsDaoMixin implements BaseDao<RecordValueConfigs, int> {
  RecordValueConfigsDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(RecordValueConfigsCompanion data) {
    return into(recordValueConfigs).insert(data);
  }

  @override
  Future<List<RecordValueConfigsData>> findAll() {
    return select(recordValueConfigs).get();
  }

  @override
  Future<RecordValueConfigsData?> findById(int id) {
    return (select(recordValueConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordValueConfigsData>> findByRecordType(int recordTypeId) {
    return (select(recordValueConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).get();
  }

  Future<List<RecordValueConfigsData>> findConfigurableFieldsByRecordType(int recordTypeId) {
    return (select(recordValueConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId))
          ..orderBy([(t) => OrderingTerm(expression: t.fieldName)]))
        .get();
  }

  Future<RecordValueConfigsData?> findByRecordTypeAndField(int recordTypeId, String fieldName) {
    return (select(recordValueConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.fieldName.equals(fieldName)))
        .getSingleOrNull();
  }

  @override
  Future<int> update(RecordValueConfigsCompanion data) {
    return (update(recordValueConfigs)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordValueConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteByRecordType(int recordTypeId) {
    return (delete(recordValueConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }

  Future<int> deleteByRecordTypeAndField(int recordTypeId, String fieldName) {
    return (delete(recordValueConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId) & tbl.fieldName.equals(fieldName)))
        .go();
  }
  
  Future<int> deleteAll() {
    return delete(recordValueConfigs).go();
  }
}