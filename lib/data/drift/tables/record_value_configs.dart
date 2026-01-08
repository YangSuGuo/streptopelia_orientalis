import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';

class RecordValueConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer().references(RecordTypes, #id, onDelete: KeyAction.cascade)();
  TextColumn get fieldName => text()();
  TextColumn get fieldLabel => text().nullable()();
  TextColumn get fieldType => text().withDefault(const Constant('numeric'))();
  TextColumn get unit => text().nullable()();
  RealColumn get minValue => real().nullable()();
  RealColumn get maxValue => real().nullable()();
  RealColumn get defaultValue => real().nullable()();
  TextColumn get selectionOptions => text().nullable()();
  BoolColumn get isRequired => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}