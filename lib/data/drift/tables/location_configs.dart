import 'package:drift/drift.dart';

class LocationConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer()();
  BoolColumn get requireLocation => boolean().withDefault(const Constant(false))();
  TextColumn get locationAccuracy => text().withDefault(const Constant('high'))();
  IntColumn get locationTimeout => integer().withDefault(const Constant(30000))();
  BoolColumn get showLocationDetails => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordTypeId) REFERENCES record_types(id) ON DELETE CASCADE'];
}