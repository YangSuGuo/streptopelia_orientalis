import 'package:drift/drift.dart';

class RecordTags extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer()();
  TextColumn get tagName => text()();
  TextColumn get tagColor => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordId) REFERENCES records(id) ON DELETE CASCADE'];
}