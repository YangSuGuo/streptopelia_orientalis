import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

class MediaRecord extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get storageRootDir => text()();
  
  TextColumn get storageDir => text()();
  
  TextColumn get metadata => text()();
  
  DateTimeColumn get createdAt => dateTime()();
}