import 'package:drift/drift.dart';

class RecordTypes extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get description => text().nullable()();

  TextColumn get icon => text().nullable()();

  TextColumn get color => text().nullable()();

  TextColumn get config => text().map(const JsonTypeConverter())();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}