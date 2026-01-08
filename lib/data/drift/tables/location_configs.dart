import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';

class LocationConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer().references(RecordTypes, #id, onDelete: KeyAction.cascade)();
  BoolColumn get requireLocation => boolean().withDefault(const Constant(false))();
  TextColumn get locationAccuracy => text().withDefault(const Constant('high'))();
  IntColumn get locationTimeout => integer().withDefault(const Constant(30000))();
  BoolColumn get showLocationDetails => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}