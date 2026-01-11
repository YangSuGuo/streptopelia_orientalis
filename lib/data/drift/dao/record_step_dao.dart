import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_steps.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordSteps])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(super.db);

  Future<int> insertRecordStep(Insertable<RecordStep> recordStep) {
    return into(recordSteps).insert(recordStep);
  }

  Future<List<RecordStep>> getAllRecordSteps() {
    return select(recordSteps).get();
  }

  Future<RecordStep?> getRecordStepById(int id) {
    return (select(recordSteps)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordStep>> getRecordStepsByRecordId(int recordId) {
    return (select(recordSteps)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordStep>> getRecordStepsByRecordIdOrdered(int recordId) {
    return (select(recordSteps)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm(expression: t.stepOrder)]))
        .get();
  }

  Future<int> updateRecordStep(RecordStep entry) {
    return (update(recordSteps)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecordStep(int id) {
    return (delete(recordSteps)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteRecordStepsByRecordId(int recordId) {
    return (delete(recordSteps)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}