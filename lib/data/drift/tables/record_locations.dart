import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

class RecordLocations extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get locationName => text().nullable()();
  RealColumn get accuracy => real().nullable()();
  RealColumn get altitude => real().nullable()();
  RealColumn get speed => real().nullable()();
  RealColumn get heading => real().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}