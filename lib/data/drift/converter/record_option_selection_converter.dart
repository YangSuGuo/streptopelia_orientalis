import 'package:drift/drift.dart';

import '../../../domain/entity/record_option_selection.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class RecordOptionSelectionConverter extends EntityConverter<RecordOptionSelection, RecordOptionSelectionData> {
  @override
  RecordOptionSelection toEntity(RecordOptionSelectionData data) {
    return RecordOptionSelection(
      id: data.id,
      projectId: data.projectId,
      recordId: data.recordId,
      optionFieldId: data.optionFieldId,
      selectedOptions: data.selectedOptions,
    );
  }

  @override
  RecordOptionSelectionCompanion toCompanion(RecordOptionSelection entity) {
    return RecordOptionSelectionCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      recordId: Value(entity.recordId),
      optionFieldId: Value(entity.optionFieldId),
      selectedOptions: Value(entity.selectedOptions),
    );
  }

  @override
  RecordOptionSelectionCompanion createInsertCompanion(RecordOptionSelection entity) {
    return RecordOptionSelectionCompanion.insert(
      projectId: entity.projectId,
      recordId: entity.recordId,
      optionFieldId: entity.optionFieldId,
      selectedOptions: entity.selectedOptions,
    );
  }
}
