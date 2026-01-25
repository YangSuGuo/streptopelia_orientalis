import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/record_step.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordStep])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(super.db);

  Future<int> insertRecordStep(Insertable<RecordStep> recordStep) {
    return into(recordStep).insert(recordStep);
  }

  Future<List<RecordStep>> getAllRecordSteps() {
    return select(recordStep).get();
  }

  Future<RecordStep?> getRecordStepById(int id) {
    return (select(recordStep)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<List<RecordStep>> getRecordStepsByRecordId(int recordId) {
    return (select(recordStep)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordStep>> getRecordStepsByProject(int projectId) {
    return (select(recordStep)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<int> updateRecordStep(RecordStep entry) {
    return (update(recordStep)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteRecordStep(int id) {
    return (delete(recordStep)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<int> deleteRecordStepsByRecordId(int recordId) {
    return (delete(recordStep)..where((tbl) => tbl.recordId.equals(recordId))).go();
  }
}