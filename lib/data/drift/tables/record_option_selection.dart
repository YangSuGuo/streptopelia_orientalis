import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

import 'option_field.dart';

class RecordOptionSelection extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get optionFieldId => integer().references(OptionField, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get selectedOptions => text()();
}