import 'package:drift/drift.dart';

import '../../../domain/entity/tag.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class TagConverter extends EntityConverter<Tag, TagData> {
  @override
  Tag toEntity(TagData data) {
    return Tag(id: data.id, title: data.title, icon: data.icon, colorTheme: data.colorTheme);
  }

  @override
  TagCompanion toCompanion(Tag entity) {
    return TagCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      title: Value(entity.title),
      icon: entity.icon != null ? Value(entity.icon) : const Value.absent(),
      colorTheme: entity.colorTheme != null ? Value(entity.colorTheme) : const Value.absent(),
    );
  }

  @override
  TagCompanion createInsertCompanion(Tag entity) {
    return TagCompanion.insert(
      title: entity.title,
      icon: entity.icon != null ? Value(entity.icon) : const Value.absent(),
      colorTheme: entity.colorTheme != null ? Value(entity.colorTheme) : const Value.absent(),
    );
  }
}
