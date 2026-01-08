import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

class RecordPhotos extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();
  TextColumn get photoPath => text().nullable()();
  TextColumn get photoUrl => text().nullable()();
  TextColumn get thumbnailPath => text().nullable()();
  TextColumn get description => text().nullable()();
  IntColumn get width => integer().nullable()();
  IntColumn get height => integer().nullable()();
  IntColumn get fileSize => integer().nullable()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}