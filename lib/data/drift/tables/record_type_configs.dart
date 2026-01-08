import 'package:drift/drift.dart';

class RecordTypeConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer()();
  TextColumn get configKey => text()();
  TextColumn get configValue => text().nullable()();
  TextColumn get configType => text().withDefault(const Constant('string'))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordTypeId) REFERENCES record_types(id) ON DELETE CASCADE'];
}