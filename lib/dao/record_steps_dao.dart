import 'package:drift/drift.dart';
import '../data/database.dart';
import '../data/drift/tables/record_steps.dart';
import 'base_dao.dart';

part 'record_steps_dao.g.dart';

@DriftAccessor(tables: [RecordSteps])
class RecordStepsDao extends DatabaseAccessor<AppDatabase> with _$RecordStepsDaoMixin implements BaseDao<RecordSteps, int> {
  RecordStepsDao(AppDatabase db) : super(db);

  @override
  Future<int> insert(RecordStepsCompanion data) {
    return into(recordSteps).insert(data);
  }

  @override
  Future<List<RecordStepsData>> findAll() {
    return select(recordSteps).get();
  }

  @override
  Future<RecordStepsData?> findById(int id) {
    return (select(recordSteps)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordStepsData>> findStepsByRecord(int recordId) {
    return (select(recordSteps)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm(expression: t.stepOrder)]))
        .get();
  }

  Future<List<RecordStepsData>> findStepsByRecordAndStatus(int recordId, String status) {
    return (select(recordSteps)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.stepStatus.equals(status))
          ..orderBy([(t) => OrderingTerm(expression: t.stepOrder)]))
        .get();
  }

  Future<int> updateStepStatus(int stepId, String status, {DateTime? completedAt}) {
    return (update(recordSteps)..where((tbl) => tbl.id.equals(stepId))).write(
      RecordStepsCompanion(
        id: Value(stepId),
        stepStatus: Value(status),
        completedAt: completedAt != null ? Value(completedAt) : const Value.absent(),
      ),
    );
  }

  @override
  Future<int> update(RecordStepsCompanion data) {
    return (update(recordSteps)..where((tbl) => tbl.id.equals(data.id.value))).write(data);
  }

  @override
  Future<int> deleteById(int id) {
    return (delete(recordSteps)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteStepsByRecord(int recordId) {
    return (delete(recordSteps)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
  
  Future<int> deleteAll() {
    return delete(recordSteps).go();
  }
}