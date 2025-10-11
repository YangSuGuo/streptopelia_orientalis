import 'package:drift/drift.dart';

class CustomFields extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get recordTypeId => integer()();

  TextColumn get fieldName => text()();

  TextColumn get fieldType => text()();

  TextColumn get fieldLabel => text()();

  TextColumn get fieldConfig => text().nullable()();

  BoolColumn get isRequired => boolean().withDefault(const Constant(false))();

  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
