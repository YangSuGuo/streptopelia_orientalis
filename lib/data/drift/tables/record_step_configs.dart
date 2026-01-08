import 'package:drift/drift.dart';

class RecordStepConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer()();
  TextColumn get stepName => text()();
  TextColumn get stepDescription => text().nullable()();
  IntColumn get stepOrder => integer()();
  BoolColumn get required => boolean().withDefault(const Constant(false))();
  BoolColumn get allowSkip => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordTypeId) REFERENCES record_types(id) ON DELETE CASCADE'];
}