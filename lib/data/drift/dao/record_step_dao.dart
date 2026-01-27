import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_step.dart';
import '../tables/record_step.dart' as t;

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [t.RecordStep])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(AppDatabase db) : super(db);

  Future<List<RecordStep>> getAllRecordSteps() async {
    return await select(t.RecordStep).get();
  }

  Future<RecordStep?> getRecordStepById(int id) async {
    return await (select(t.RecordStep)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecordStep(Insertable<RecordStep> recordStep) async {
    return await into(t.RecordStep).insert(recordStep);
  }

  Future<void> updateRecordStep(RecordStep recordStep) async {
    return await (update(t.RecordStep)..where((tbl) => tbl.id.equals(recordStep.id!))).write(recordStep);
  }

  Future<void> deleteRecordStep(int id) async {
    await (delete(t.RecordStep)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllRecordSteps() async {
    await delete(t.RecordStep).go();
  }

  Future<List<RecordStep>> getRecordStepsByRecord(int recordId) async {
    return await (select(t.RecordStep)..where((tbl) => tbl.recordId.equals(recordId))).get();
  }

  Future<List<RecordStep>> getRecordStepsByStepDefinition(int stepDefinitionId) async {
    return await (select(t.RecordStep)..where((tbl) => tbl.stepDefinitionId.equals(stepDefinitionId))).get();
  }

  Future<List<RecordStep>> getRecordStepsByProject(int projectId) async {
    return await (select(t.RecordStep)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }
}