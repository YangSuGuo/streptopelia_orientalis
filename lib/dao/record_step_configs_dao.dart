import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_step_configs.dart';
import 'base_dao.dart';

part 'record_step_configs_dao.g.dart';

@DriftAccessor(tables: [RecordStepConfigs])
class RecordStepConfigsDao extends DatabaseAccessor<AppDatabase> with _$RecordStepConfigsDaoMixin implements BaseDao<RecordStepConfigs, int> {
  RecordStepConfigsDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(RecordStepConfigsCompanion data) {
    return into(recordStepConfigs).insert(data);
  }

  @override
  Future<List<RecordStepConfigsData>> findAll() {
    return select(recordStepConfigs).get();
  }

  @override
  Future<RecordStepConfigsData?> findById(int id) {
    return (select(recordStepConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordStepConfigsData>> findByRecordType(int recordTypeId) {
    return (select(recordStepConfigs)
          ..where((tbl) => tbl.recordTypeId.equals(recordTypeId))
          ..orderBy([(t) => OrderingTerm(expression: t.stepOrder)]))
        .get();
  }

  @override
  Future<int> update(RecordStepConfigsCompanion data) {
    return (update(recordStepConfigs)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordStepConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteByRecordType(int recordTypeId) {
    return (delete(recordStepConfigs)..where((tbl) => tbl.recordTypeId.equals(recordTypeId))).go();
  }
  
  Future<int> deleteAll() {
    return delete(recordStepConfigs).go();
  }
}