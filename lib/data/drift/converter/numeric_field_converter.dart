import 'package:drift/drift.dart';

import '../entities/numeric_field.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class NumericFieldConverter extends EntityConverter<NumericField, NumericFieldData> {
  @override
  NumericField toEntity(NumericFieldData data) {
    return NumericField(
      id: data.id,
      projectId: data.projectId,
      title: data.title,
      unit: data.unit,
    );
  }

  @override
  Insertable<NumericFieldData> toCompanion(NumericField entity) {
    return NumericFieldCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      title: Value(entity.title),
      unit: entity.unit != null ? Value(entity.unit) : const Value.absent(),
    );
  }

  @override
  Insertable<NumericFieldData> createInsertCompanion(NumericField entity) {
    return NumericFieldCompanion.insert(
      projectId: entity.projectId,
      title: entity.title,
      unit: entity.unit != null ? Value(entity.unit) : const Value.absent(),
    );
  }
}
