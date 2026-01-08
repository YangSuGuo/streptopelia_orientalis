import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';

class RecordStepConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer().references(RecordTypes, #id, onDelete: KeyAction.cascade)();
  TextColumn get stepName => text()();
  TextColumn get stepDescription => text().nullable()();
  IntColumn get stepOrder => integer()();
  BoolColumn get required => boolean().withDefault(const Constant(false))();
  BoolColumn get allowSkip => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}