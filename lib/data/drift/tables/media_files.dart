import 'package:drift/drift.dart';

class MediaFiles extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get recordId => integer()();

  TextColumn get filePath => text()();

  TextColumn get fileType => text()();

  TextColumn get originalName => text()();

  IntColumn get fileSize => integer()();

  TextColumn get metadata => text().map(const JsonTypeConverter())();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}