import 'package:drift/drift.dart';

class MediaRecord extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Record, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get storageRootDir => text()();
  
  TextColumn get storageDir => text()();
  
  TextColumn get metadata => text()();
  
  DateTimeColumn get createdAt => dateTime()();
}