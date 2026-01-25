import 'package:drift/drift.dart';

class RecordStep extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Record, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get stepDefinitionId => integer().references(StepDefinition, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get stepNumber => integer()();
}