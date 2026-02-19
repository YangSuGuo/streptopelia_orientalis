import 'package:drift/drift.dart';

import '../../../domain/entity/records.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class RecordsConverter extends EntityConverter<Records, Record> {
  @override
  Records toEntity(Record data) {
    return Records(
      id: data.id,
      projectId: data.projectId,
      title: data.title,
      content: data.content,
      stepIndex: data.stepIndex,
      isArchived: data.isArchived,
      isHidden: data.isHidden,
      updatedAt: data.updatedAt,
      createdAt: data.createdAt ?? DateTime.now(),
    );
  }

  @override
  RecordsCompanion toCompanion(Records entity) {
    return RecordsCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      title: Value(entity.title),
      content: entity.content != null ? Value(entity.content) : const Value.absent(),
      stepIndex: entity.stepIndex != null ? Value(entity.stepIndex) : const Value.absent(),
      isArchived: Value(entity.isArchived),
      isHidden: Value(entity.isHidden),
      updatedAt: Value(entity.updatedAt),
      createdAt: Value(entity.createdAt),
    );
  }

  @override
  RecordsCompanion createInsertCompanion(Records entity) {
    return RecordsCompanion.insert(
      projectId: entity.projectId,
      title: entity.title,
      content: entity.content != null ? Value(entity.content) : const Value.absent(),
      stepIndex: entity.stepIndex != null ? Value(entity.stepIndex) : const Value.absent(),
      isArchived: Value(entity.isArchived),
      isHidden: Value(entity.isHidden),
      createdAt: Value(entity.createdAt),
    );
  }
}
