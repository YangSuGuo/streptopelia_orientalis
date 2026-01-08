import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

class RecordTags extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  TextColumn get tagName => text()();
  TextColumn get tagColor => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}