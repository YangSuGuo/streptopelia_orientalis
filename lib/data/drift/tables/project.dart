import 'package:drift/drift.dart';

import 'category.dart';

class Project extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get categoryId => integer().nullable().references(Category, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get name => text()();
  
  TextColumn get icon => text().nullable()();
  
  TextColumn get description => text().nullable()();
  
  TextColumn get color => text().nullable()();
  
  BoolColumn get enableNumericRecord => boolean().clientDefault(() => false)();
  
  BoolColumn get enableOptionRecord => boolean().clientDefault(() => false)();
  
  BoolColumn get enableStepRecord => boolean().clientDefault(() => false)();
  
  BoolColumn get enableLocationRecord => boolean().clientDefault(() => false)();
  
  BoolColumn get enableMediaRecord => boolean().clientDefault(() => false)();
  
  BoolColumn get enableStartRecord => boolean().clientDefault(() => false)();
  
  BoolColumn get enableNotification => boolean().clientDefault(() => false)();
  
  BoolColumn get isArchived => boolean().clientDefault(() => false)();
  
  BoolColumn get isHidden => boolean().clientDefault(() => false)();
  
  IntColumn get sortWeight => integer().nullable()();
  
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  
  DateTimeColumn get createdAt => dateTime().nullable()();
}