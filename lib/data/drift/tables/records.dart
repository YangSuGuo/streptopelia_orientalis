import 'package:drift/drift.dart';

class Records extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get recordTypeId => integer()();

  TextColumn get title => text()();

  TextColumn get content => text().nullable()();

  TextColumn get metadata => text().map(const JsonTypeConverter())();

  IntColumn get categoryId => integer().nullable()();

  IntColumn get parentId => integer().nullable()();

  TextColumn get status => text().withDefault(const Constant('active'))();

  DateTimeColumn get startTime => dateTime().nullable()();

  DateTimeColumn get endTime => dateTime().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}