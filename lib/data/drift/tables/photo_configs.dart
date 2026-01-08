import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/record_types.dart';

class PhotoConfigs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recordTypeId => integer().references(RecordTypes, #id, onDelete: KeyAction.cascade)();
  IntColumn get maxPhotos => integer().withDefault(const Constant(10))();
  BoolColumn get requirePhoto => boolean().withDefault(const Constant(false))();
  TextColumn get photoQuality => text().withDefault(const Constant('medium'))();
  BoolColumn get allowMultiple => boolean().withDefault(const Constant(true))();
  BoolColumn get enableThumbnail => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}