import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/step_definition.dart';

part 'step_definition_dao.g.dart';

@DriftAccessor(tables: [StepDefinition])
class StepDefinitionDao extends DatabaseAccessor<AppDatabase> with _$StepDefinitionDaoMixin {
  StepDefinitionDao(super.db);

  Future<int> insertStepDefinition(Insertable<StepDefinition> stepDefinition) {
    return into(stepDefinition).insert(stepDefinition);
  }

  Future<List<StepDefinition>> getAllStepDefinitions() {
    return select(stepDefinition).get();
  }

  Future<List<StepDefinition>> getStepDefinitionsByProject(int projectId) {
    return (select(stepDefinition)..where((tbl) => tbl.projectId.equals(projectId))).get();
  }

  Future<StepDefinition?> getStepDefinitionById(int id) {
    return (select(stepDefinition)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateStepDefinition(StepDefinition entry) {
    return (update(stepDefinition)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteStepDefinition(int id) {
    return (delete(stepDefinition)..where((tbl) => tbl.id.equals(id))).go();
  }
}