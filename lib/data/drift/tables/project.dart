import 'package:drift/drift.dart';

import 'category.dart';

class Project extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get categoryId => integer().references(Category, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get name => text()();
  
  TextColumn get icon => text().nullable()();
  
  TextColumn get description => text().nullable()();
  
  TextColumn get colorTheme => text().nullable()();
  
  BoolColumn get enableNumericRecord => boolean()();
  
  BoolColumn get enableOptionRecord => boolean()();
  
  BoolColumn get enableStepRecord => boolean()();
  
  BoolColumn get enableLocationRecord => boolean()();
  
  BoolColumn get enableMediaRecord => boolean()();
  
  BoolColumn get enableStartRecord => boolean()();
  
  BoolColumn get enableNotification => boolean()();
  
  BoolColumn get isArchived => boolean()();
  
  BoolColumn get isHidden => boolean()();
  
  IntColumn get sortWeight => integer()();
  
  DateTimeColumn get updatedAt => dateTime()();
  
  DateTimeColumn get createdAt => dateTime()();
}