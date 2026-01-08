import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';

class RecordTypeConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer().references(RecordTypes, #id, onDelete: KeyAction.cascade)();
  TextColumn get configKey => text()();
  TextColumn get configValue => text().nullable()();
  TextColumn get configType => text().withDefault(const Constant('string'))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}