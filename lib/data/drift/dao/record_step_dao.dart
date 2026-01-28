import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_step.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordStep])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(super.db);

  Future<List<RecordStepData>> getAllRecordSteps() async {
    return await select(db.recordStep).get();
  }

  Future<RecordStepData?> getRecordStepById(int id) async {
    return await (select(db.recordStep)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordStep(Insertable<RecordStepData> recordStep) async {
    return await into(db.recordStep).insert(recordStep);
  }

  Future<void> updateRecordStep(RecordStepData recordStep) async {
    await (update(db.recordStep)..where((tbl) => tbl.id.equals(recordStep.id))).write(recordStep);
  }

  Future<void> deleteRecordStep(int id) async {
    await (delete(db.recordStep)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllRecordSteps() async {
    await delete(db.recordStep).go();
  }
}