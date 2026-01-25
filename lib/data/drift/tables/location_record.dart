import 'package:drift/drift.dart';

class LocationRecord extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  IntColumn get projectId => integer().references(Project, #id, onDelete: KeyAction.cascade)();
  
  IntColumn get recordId => integer().references(Record, #id, onDelete: KeyAction.cascade)();
  
  TextColumn get locationName => text()();
  
  RealColumn get accuracy => real()();
  
  RealColumn get longitude => real()();
  
  RealColumn get latitude => real()();
  
  DateTimeColumn get createdAt => dateTime()();
}