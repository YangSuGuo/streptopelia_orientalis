import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

class RecordValues extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  TextColumn get fieldName => text()();
  RealColumn get fieldValue => real().nullable()();
  TextColumn get fieldTextValue => text().nullable()();
  TextColumn get fieldType => text().withDefault(const Constant('numeric'))();
  TextColumn get unit => text().nullable()();
  TextColumn get valueType => text().withDefault(const Constant('decimal'))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}