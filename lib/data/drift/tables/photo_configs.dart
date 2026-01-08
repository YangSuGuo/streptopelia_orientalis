import 'package:drift/drift.dart';

class PhotoConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer()();
  IntColumn get maxPhotos => integer().withDefault(const Constant(10))();
  BoolColumn get requirePhoto => boolean().withDefault(const Constant(false))();
  TextColumn get photoQuality => text().withDefault(const Constant('medium'))();
  BoolColumn get allowMultiple => boolean().withDefault(const Constant(true))();
  BoolColumn get enableThumbnail => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  List<String> get customConstraints => ['FOREIGN KEY (recordTypeId) REFERENCES record_types(id) ON DELETE CASCADE'];
}