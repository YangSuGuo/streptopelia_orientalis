import 'package:drift/drift.dart';
import '../app_database.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordSteps])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(AppDatabase db) : super(db);

  Future<List<RecordStep>> getAllRecordSteps() {
    return select(recordSteps).get();
  }

  Future<RecordStep?> getRecordStepById(int id) {
    return (select(recordSteps)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordStep(Insertable<RecordStep> recordStep) {
    return into(recordSteps).insert(recordStep);
  }

  Future<void> updateRecordStep(RecordStepUpdates recordStep) {
    return update(recordSteps).replace(recordStep);
  }

  Future<void> deleteRecordStep(int id) {
    return (delete(recordSteps)..where((tbl) => tbl.id.equals(id))).go();
  }

  // Get record steps by record ID
  Future<List<RecordStep>> getRecordStepsByRecordId(int recordId) {
    return (select(recordSteps)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  // Get completed record steps by record ID
  Future<List<RecordStep>> getCompletedRecordStepsByRecordId(int recordId) {
    return (select(recordSteps)
          ..where((tbl) => tbl.recordId.equals(recordId) & tbl.stepStatus.equals('completed')))
        .get();
  }
}