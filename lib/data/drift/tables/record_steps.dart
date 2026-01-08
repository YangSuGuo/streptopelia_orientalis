import 'package:drift/drift.dart';

class RecordSteps extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer()();
  TextColumn get stepName => text()();
  IntColumn get stepOrder => integer()();
  TextColumn get stepStatus => text().withDefault(const Constant('pending'))();
  DateTimeColumn get completedAt => dateTime().nullable()();
  TextColumn get note => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordId) REFERENCES records(id) ON DELETE CASCADE'];
}