import 'package:drift/drift.dart';

class UserSettings extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get settingKey => text().unique()();

  TextColumn get settingValue => text()();

  TextColumn get settingType => text().withDefault(const Constant('string'))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
