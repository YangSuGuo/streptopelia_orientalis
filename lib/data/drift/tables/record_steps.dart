import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

class RecordSteps extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  TextColumn get stepName => text()();
  IntColumn get stepOrder => integer()();
  TextColumn get stepStatus => text().withDefault(const Constant('pending'))();
  DateTimeColumn get completedAt => dateTime().nullable()();
  TextColumn get note => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}