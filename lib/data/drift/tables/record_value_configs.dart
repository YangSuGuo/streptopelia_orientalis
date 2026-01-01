import 'package:drift/drift.dart';

class RecordValueConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer()();
  TextColumn get fieldName => text()();
  TextColumn get fieldLabel => text().nullable()();
  TextColumn get fieldType => text().withDefault(const Constant('numeric'))();
  TextColumn get unit => text().nullable()();
  RealColumn get minValue => real().nullable()();
  RealColumn get maxValue => real().nullable()();
  RealColumn get defaultValue => real().nullable()();
  TextColumn get selectionOptions => text().nullable()();
  BoolColumn get isRequired => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordTypeId) REFERENCES record_types(id) ON DELETE CASCADE'];
}