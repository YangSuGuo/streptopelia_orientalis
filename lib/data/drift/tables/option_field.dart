import 'package:drift/drift.dart';

class OptionField extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get title => text()();
  
  IntColumn get optionCount => integer()();
  
  IntColumn get maxSelections => integer()();
  
  TextColumn get optionsList => text()();
}