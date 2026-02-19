import 'package:drift/drift.dart';

import '../app_database.dart';
import '../entities/step_definition.dart';
import 'entity_converter.dart';

class StepDefinitionConverter extends EntityConverter<StepDefinition, StepDefinitionData> {
  @override
  StepDefinition toEntity(StepDefinitionData data) {
    return StepDefinition(
      id: data.id,
      projectId: data.projectId,
      stepNumber: data.stepNumber,
      title: data.title,
      description: data.description,
      enableNumericRecord: data.enableNumericRecord,
      enableOptionRecord: data.enableOptionRecord,
      enableMediaRecord: data.enableMediaRecord,
      updatedAt: data.updatedAt,
      createdAt: data.createdAt,
    );
  }

  @override
  StepDefinitionCompanion toCompanion(StepDefinition entity) {
    return StepDefinitionCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      stepNumber: Value(entity.stepNumber),
      title: Value(entity.title),
      description: entity.description != null ? Value(entity.description) : const Value.absent(),
      enableNumericRecord: Value(entity.enableNumericRecord),
      enableOptionRecord: Value(entity.enableOptionRecord),
      enableMediaRecord: Value(entity.enableMediaRecord),
      updatedAt: Value(entity.updatedAt),
      createdAt: Value(entity.createdAt),
    );
  }

  @override
  StepDefinitionCompanion createInsertCompanion(StepDefinition entity) {
    return StepDefinitionCompanion.insert(
      projectId: entity.projectId,
      stepNumber: entity.stepNumber,
      title: entity.title,
      description: Value(entity.description),
      enableNumericRecord: entity.enableNumericRecord,
      enableOptionRecord: entity.enableOptionRecord,
      enableMediaRecord: entity.enableMediaRecord,
      updatedAt: entity.updatedAt,
      createdAt: entity.createdAt,
    );
  }
}
