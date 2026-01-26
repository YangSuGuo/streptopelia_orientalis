import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/record_step.dart';

part 'record_step_dao.g.dart';

@DriftAccessor(tables: [RecordStepTable])
class RecordStepDao extends DatabaseAccessor<AppDatabase> with _$RecordStepDaoMixin {
  RecordStepDao(AppDatabase db) : super(db);

  Future<List<RecordStep>> getAllRecordSteps() async {
    final recordSteps = await select(recordStepTable).get();
    return recordSteps.map((rs) => RecordStep(
      id: rs.id,
      projectId: rs.projectId,
      recordId: rs.recordId,
      stepDefinitionId: rs.stepDefinitionId,
      stepNumber: rs.stepNumber,
    )).toList();
  }

  Future<RecordStep?> getRecordStepById(int id) async {
    final recordStep = await (select(recordStepTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (recordStep == null) return null;
    return RecordStep(
      id: recordStep.id,
      projectId: recordStep.projectId,
      recordId: recordStep.recordId,
      stepDefinitionId: recordStep.stepDefinitionId,
      stepNumber: recordStep.stepNumber,
    );
  }

  Future<int> insertRecordStep(RecordStep recordStep) async {
    return await into(recordStepTable).insert(RecordStepTableCompanion.insert(
      projectId: recordStep.projectId,
      recordId: recordStep.recordId,
      stepDefinitionId: recordStep.stepDefinitionId,
      stepNumber: recordStep.stepNumber,
    ));
  }

  Future<void> updateRecordStep(RecordStep recordStep) async {
    await (update(recordStepTable)..where((tbl) => tbl.id.equals(recordStep.id!))).write(
      RecordStepTableCompanion(
        projectId: Value(recordStep.projectId),
        recordId: Value(recordStep.recordId),
        stepDefinitionId: Value(recordStep.stepDefinitionId),
        stepNumber: Value(recordStep.stepNumber),
      ),
    );
  }

  Future<void> deleteRecordStep(int id) async {
    await (delete(recordStepTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}