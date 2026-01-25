import 'package:drift/drift.dart';

class NumericField extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get title => text()();
  
  TextColumn get unit => text().nullable()();
}