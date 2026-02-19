import 'package:drift/drift.dart';

import '../../../domain/entity/category.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class CategoryConverter extends EntityConverter<Category, CategoryData> {
  @override
  Category toEntity(CategoryData data) {
    return Category(
      id: data.id,
      title: data.title,
      icon: data.icon,
      colorTheme: data.colorTheme,
    );
  }

  @override
  CategoryCompanion toCompanion(Category entity) {
    return CategoryCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      title: Value(entity.title),
      icon: entity.icon != null ? Value(entity.icon) : const Value.absent(),
      colorTheme: entity.colorTheme != null ? Value(entity.colorTheme) : const Value.absent(),
    );
  }

  @override
  CategoryCompanion createInsertCompanion(Category entity) {
    return CategoryCompanion.insert(
      title: entity.title,
      icon: entity.icon != null ? Value(entity.icon) : const Value.absent(),
      colorTheme: entity.colorTheme != null ? Value(entity.colorTheme) : const Value.absent(),
    );
  }
}
