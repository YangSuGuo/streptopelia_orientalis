import 'package:drift/drift.dart';

class RecordOptionSelection extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Record, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get optionFieldId => integer().references(OptionField, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get selectedOptions => text()();
}