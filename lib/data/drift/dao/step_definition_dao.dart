import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/step_definition.dart';
import '../tables/step_definition.dart' as t;

part 'step_definition_dao.g.dart';

@DriftAccessor(tables: [t.StepDefinition])
class StepDefinitionDao extends DatabaseAccessor<AppDatabase> with _$StepDefinitionDaoMixin {
  StepDefinitionDao(AppDatabase db) : super(db);

  Future<List<StepDefinition>> getAllStepDefinitions() async {
    return await select(t.StepDefinition).get();
  }

  Future<StepDefinition?> getStepDefinitionById(int id) async {
    return await (select(t.StepDefinition)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertStepDefinition(Insertable<StepDefinition> stepDefinition) async {
    return await into(t.StepDefinition).insert(stepDefinition);
  }

  Future<void> updateStepDefinition(StepDefinition stepDefinition) async {
    return await (update(t.StepDefinition)..where((tbl) => tbl.id.equals(stepDefinition.id!))).write(stepDefinition);
  }

  Future<void> deleteStepDefinition(int id) async {
    await (delete(t.StepDefinition)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllStepDefinitions() async {
    await delete(t.StepDefinition).go();
  }

  Future<List<StepDefinition>> getStepDefinitionsByProject(int projectId) async {
    return await (select(t.StepDefinition)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<List<StepDefinition>> getStepDefinitionsByStepNumber(int stepNumber) async {
    return await (select(t.StepDefinition)..where((tbl) => tbl.stepNumber.equals(stepNumber))).get();
  }
}