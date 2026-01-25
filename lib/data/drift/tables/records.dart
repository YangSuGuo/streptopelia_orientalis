import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';

class Records extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get title => text()();
  
  TextColumn get content => text().nullable()();
  
  IntColumn get stepIndex => integer().nullable()();
  
  BoolColumn get isArchived => boolean()();
  
  BoolColumn get isHidden => boolean()();
  
  DateTimeColumn get updatedAt => dateTime()();
  
  DateTimeColumn get createdAt => dateTime()();
}