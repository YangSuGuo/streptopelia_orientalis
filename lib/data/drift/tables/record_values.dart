import 'package:drift/drift.dart';

class RecordValues extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer()();
  TextColumn get fieldName => text()();
  RealColumn get fieldValue => real().nullable()();
  TextColumn get fieldTextValue => text().nullable()();
  TextColumn get fieldType => text().withDefault(const Constant('numeric'))();
  TextColumn get unit => text().nullable()();
  TextColumn get valueType => text().withDefault(const Constant('decimal'))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordId) REFERENCES records(id) ON DELETE CASCADE'];
}