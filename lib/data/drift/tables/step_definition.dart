import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';

class StepDefinition extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get stepNumber => integer()();
  
  TextColumn get title => text()();
  
  TextColumn get description => text().nullable()();
  
  BoolColumn get enableNumericRecord => boolean()();
  
  BoolColumn get enableOptionRecord => boolean()();
  
  BoolColumn get enableMediaRecord => boolean()();
  
  DateTimeColumn get updatedAt => dateTime()();
  
  DateTimeColumn get createdAt => dateTime()();
}