import 'package:drift/drift.dart';

class TagConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer()();
  TextColumn get tagName => text()();
  TextColumn get tagColor => text().nullable()();
  BoolColumn get isPreset => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordTypeId) REFERENCES record_types(id) ON DELETE CASCADE'];
}