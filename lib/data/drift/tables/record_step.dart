import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';
import 'package:streptopelia_orientalis/data/drift/tables/step_definition.dart';

class RecordStep extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get stepDefinitionId => integer().references(StepDefinition, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get stepNumber => integer()();
}