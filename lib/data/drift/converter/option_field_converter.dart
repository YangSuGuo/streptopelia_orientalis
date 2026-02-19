import 'package:drift/drift.dart';

import '../../../domain/entitie/option_field.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class OptionFieldConverter extends EntityConverter<OptionField, OptionFieldData> {
  @override
  OptionField toEntity(OptionFieldData data) {
    return OptionField(
      id: data.id,
      projectId: data.projectId,
      title: data.title,
      optionCount: data.optionCount,
      maxSelections: data.maxSelections,
      optionsList: data.optionsList,
    );
  }

  @override
  OptionFieldCompanion toCompanion(OptionField entity) {
    return OptionFieldCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      title: Value(entity.title),
      optionCount: Value(entity.optionCount),
      maxSelections: Value(entity.maxSelections),
      optionsList: Value(entity.optionsList),
    );
  }

  @override
  OptionFieldCompanion createInsertCompanion(OptionField entity) {
    return OptionFieldCompanion.insert(
      projectId: entity.projectId,
      title: entity.title,
      optionCount: entity.optionCount,
      maxSelections: entity.maxSelections,
      optionsList: entity.optionsList,
    );
  }
}
