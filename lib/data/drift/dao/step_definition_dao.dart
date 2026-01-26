import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/step_definition.dart';

part 'step_definition_dao.g.dart';

@DriftAccessor(tables: [StepDefinitionTable])
class StepDefinitionDao extends DatabaseAccessor<AppDatabase> with _$StepDefinitionDaoMixin {
  StepDefinitionDao(AppDatabase db) : super(db);

  Future<List<StepDefinition>> getAllStepDefinitions() async {
    final stepDefinitions = await select(stepDefinitionTable).get();
    return stepDefinitions.map((sd) => StepDefinition(
      id: sd.id,
      projectId: sd.projectId,
      stepNumber: sd.stepNumber,
      title: sd.title,
      description: sd.description,
      enableNumericRecord: sd.enableNumericRecord,
      enableOptionRecord: sd.enableOptionRecord,
      enableMediaRecord: sd.enableMediaRecord,
      updatedAt: sd.updatedAt,
      createdAt: sd.createdAt,
    )).toList();
  }

  Future<StepDefinition?> getStepDefinitionById(int id) async {
    final stepDefinition = await (select(stepDefinitionTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (stepDefinition == null) return null;
    return StepDefinition(
      id: stepDefinition.id,
      projectId: stepDefinition.projectId,
      stepNumber: stepDefinition.stepNumber,
      title: stepDefinition.title,
      description: stepDefinition.description,
      enableNumericRecord: stepDefinition.enableNumericRecord,
      enableOptionRecord: stepDefinition.enableOptionRecord,
      enableMediaRecord: stepDefinition.enableMediaRecord,
      updatedAt: stepDefinition.updatedAt,
      createdAt: stepDefinition.createdAt,
    );
  }

  Future<int> insertStepDefinition(StepDefinition stepDefinition) async {
    return await into(stepDefinitionTable).insert(StepDefinitionTableCompanion.insert(
      projectId: stepDefinition.projectId,
      stepNumber: stepDefinition.stepNumber,
      title: stepDefinition.title,
      description: stepDefinition.description,
      enableNumericRecord: stepDefinition.enableNumericRecord,
      enableOptionRecord: stepDefinition.enableOptionRecord,
      enableMediaRecord: stepDefinition.enableMediaRecord,
      updatedAt: stepDefinition.updatedAt,
      createdAt: stepDefinition.createdAt,
    ));
  }

  Future<void> updateStepDefinition(StepDefinition stepDefinition) async {
    await (update(stepDefinitionTable)..where((tbl) => tbl.id.equals(stepDefinition.id!))).write(
      StepDefinitionTableCompanion(
        projectId: Value(stepDefinition.projectId),
        stepNumber: Value(stepDefinition.stepNumber),
        title: Value(stepDefinition.title),
        description: Value(stepDefinition.description),
        enableNumericRecord: Value(stepDefinition.enableNumericRecord),
        enableOptionRecord: Value(stepDefinition.enableOptionRecord),
        enableMediaRecord: Value(stepDefinition.enableMediaRecord),
        updatedAt: Value(stepDefinition.updatedAt),
        createdAt: Value(stepDefinition.createdAt),
      ),
    );
  }

  Future<void> deleteStepDefinition(int id) async {
    await (delete(stepDefinitionTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}