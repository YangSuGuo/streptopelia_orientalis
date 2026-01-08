import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';

class Records extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer().references(RecordTypes, #id, onDelete: KeyAction.cascade)();
  TextColumn get title => text().nullable()();
  TextColumn get content => text().nullable()();
  DateTimeColumn get startTime => dateTime().nullable()();
  DateTimeColumn get endTime => dateTime().nullable()();
  IntColumn get durationSeconds => integer().nullable()();
  TextColumn get locationName => text().nullable()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  RealColumn get accuracy => real().nullable()();
  TextColumn get status => text().withDefault(const Constant('draft'))();
  TextColumn get tagsJson => text().nullable()();
  TextColumn get metadataJson => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}