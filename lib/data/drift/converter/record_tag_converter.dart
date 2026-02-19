import 'package:drift/drift.dart';

import '../../../domain/entity/record_tag.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class RecordTagConverter extends EntityConverter<RecordTag, RecordTagData> {
  @override
  RecordTag toEntity(RecordTagData data) {
    return RecordTag(
      id: data.id,
      projectId: data.projectId,
      recordId: data.recordId,
      tagId: data.tagId,
    );
  }

  @override
  RecordTagCompanion toCompanion(RecordTag entity) {
    return RecordTagCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      recordId: Value(entity.recordId),
      tagId: Value(entity.tagId),
    );
  }

  @override
  RecordTagCompanion createInsertCompanion(RecordTag entity) {
    return RecordTagCompanion.insert(
      projectId: entity.projectId,
      recordId: entity.recordId,
      tagId: entity.tagId,
    );
  }
}
