import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/project.dart';

class NumericField extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get title => text()();
  
  TextColumn get unit => text().nullable()();
}