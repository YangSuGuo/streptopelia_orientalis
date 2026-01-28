import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/step_definition.dart';

part 'step_definition_dao.g.dart';

@DriftAccessor(tables: [StepDefinition])
class StepDefinitionDao extends DatabaseAccessor<AppDatabase> with _$StepDefinitionDaoMixin {
  StepDefinitionDao(super.db);

  Future<List<StepDefinitionData>> getAllStepDefinitions() async {
    return await select(db.stepDefinition).get();
  }

  Future<StepDefinitionData?> getStepDefinitionById(int id) async {
    return await (select(db.stepDefinition)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertStepDefinition(Insertable<StepDefinitionData> stepDefinition) async {
    return await into(db.stepDefinition).insert(stepDefinition);
  }

  Future<void> updateStepDefinition(StepDefinitionData stepDefinition) async {
    await (update(db.stepDefinition)..where((tbl) => tbl.id.equals(stepDefinition.id))).write(stepDefinition);
  }

  Future<void> deleteStepDefinition(int id) async {
    await (delete(db.stepDefinition)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllStepDefinitions() async {
    await delete(db.stepDefinition).go();
  }
}