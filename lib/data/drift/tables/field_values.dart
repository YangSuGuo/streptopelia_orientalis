import 'package:drift/drift.dart';

class FieldValues extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get recordId => integer()();

  IntColumn get customFieldId => integer()();

  TextColumn get fieldValue => text()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
