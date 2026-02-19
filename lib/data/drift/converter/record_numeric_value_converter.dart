import 'package:drift/drift.dart';

import '../../../domain/entity/record_numeric_value.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class RecordNumericValueConverter extends EntityConverter<RecordNumericValue, RecordNumericValueData> {
  @override
  RecordNumericValue toEntity(RecordNumericValueData data) {
    return RecordNumericValue(
      id: data.id,
      projectId: data.projectId,
      recordId: data.recordId,
      numericFieldId: data.numericFieldId,
      value: data.value,
    );
  }

  @override
  RecordNumericValueCompanion toCompanion(RecordNumericValue entity) {
    return RecordNumericValueCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      recordId: Value(entity.recordId),
      numericFieldId: Value(entity.numericFieldId),
      value: Value(entity.value),
    );
  }

  @override
  RecordNumericValueCompanion createInsertCompanion(RecordNumericValue entity) {
    return RecordNumericValueCompanion.insert(
      projectId: entity.projectId,
      recordId: entity.recordId,
      numericFieldId: entity.numericFieldId,
      value: entity.value,
    );
  }
}
