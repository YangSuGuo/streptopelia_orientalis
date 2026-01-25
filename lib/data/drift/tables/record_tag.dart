import 'package:drift/drift.dart';

class RecordTag extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Record, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get tagId => integer().references(Tag, #id, onDelete: KeyAction.cascade)();
}