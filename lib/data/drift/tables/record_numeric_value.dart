import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

import 'numeric_field.dart';

class RecordNumericValue extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get numericFieldId => integer().references(NumericField, #id, onDelete: KeyAction.cascade)();
  
  RealColumn get value => real()();
}