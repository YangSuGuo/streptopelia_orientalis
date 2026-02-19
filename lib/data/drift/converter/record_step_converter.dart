import 'package:drift/drift.dart';

import '../entities/record_step.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class RecordStepConverter extends EntityConverter<RecordStep, RecordStepData> {
  @override
  RecordStep toEntity(RecordStepData data) {
    return RecordStep(
      id: data.id,
      projectId: data.projectId,
      recordId: data.recordId,
      stepDefinitionId: data.stepDefinitionId,
      stepNumber: data.stepNumber,
    );
  }

  @override
  RecordStepCompanion toCompanion(RecordStep entity) {
    return RecordStepCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      recordId: Value(entity.recordId),
      stepDefinitionId: Value(entity.stepDefinitionId),
      stepNumber: Value(entity.stepNumber),
    );
  }

  @override
  RecordStepCompanion createInsertCompanion(RecordStep entity) {
    return RecordStepCompanion.insert(
      projectId: entity.projectId,
      recordId: entity.recordId,
      stepDefinitionId: entity.stepDefinitionId,
      stepNumber: entity.stepNumber,
    );
  }
}
