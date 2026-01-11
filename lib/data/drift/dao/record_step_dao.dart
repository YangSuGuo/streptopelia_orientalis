import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_steps.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordSteps])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(super.db);

  // Create
  Future<int> insertRecordStep(Insertable<RecordStepsData> recordStep) {
    return into(recordSteps).insert(recordStep);
  }

  // Read - Get all record steps
  Future<List<RecordStep>> getAllRecordSteps() {
    return select(recordSteps).get();
  }

  // Read - Get record step by ID
  Future<RecordStep?> getRecordStepById(int id) {
    return (select(recordSteps)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  // Read - Get record steps by record ID
  Future<List<RecordStep>> getRecordStepsByRecordId(int recordId) {
    return (select(recordSteps)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  // Read - Get record steps by record ID ordered by step order
  Future<List<RecordStep>> getRecordStepsByRecordIdOrdered(int recordId) {
    return (select(recordSteps)
          ..where((tbl) => tbl.recordId.equals(recordId))
          ..orderBy([(t) => OrderingTerm(expression: t.stepOrder)]))
        .get();
  }

  // Update
  Future<int> updateRecordStep(RecordStep entry) {
    return (update(recordSteps)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  // Delete
  Future<int> deleteRecordStep(int id) {
    return (delete(recordSteps)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Delete all record steps by record ID
  Future<int> deleteRecordStepsByRecordId(int recordId) {
    return (delete(recordSteps)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}