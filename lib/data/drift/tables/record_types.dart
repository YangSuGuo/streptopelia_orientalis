import 'package:drift/drift.dart';

class RecordTypes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  IntColumn get categoryId => integer().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get icon => text().nullable()();
  TextColumn get color => text().nullable()();
  BoolColumn get isEnabled => boolean().withDefault(const Constant(true))();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  
  // 配置字段
  BoolColumn get requirePhoto => boolean().withDefault(const Constant(false))();
  IntColumn get maxPhotos => integer().withDefault(const Constant(10))();
  BoolColumn get requireLocation => boolean().withDefault(const Constant(false))();
  TextColumn get locationAccuracy => text().withDefault(const Constant('high'))();
  IntColumn get locationTimeout => integer().withDefault(const Constant(30000))();
  BoolColumn get hasTimer => boolean().withDefault(const Constant(false))();
  IntColumn get timerDuration => integer().withDefault(const Constant(0))();
  BoolColumn get hasNotes => boolean().withDefault(const Constant(false))();
  BoolColumn get hasAttachments => boolean().withDefault(const Constant(false))();
  BoolColumn get hasAudioRecording => boolean().withDefault(const Constant(false))();
  IntColumn get maxAudioDuration => integer().withDefault(const Constant(60000))();
  BoolColumn get hasVideoRecording => boolean().withDefault(const Constant(false))();
  IntColumn get maxVideoDuration => integer().withDefault(const Constant(60000))();
  BoolColumn get showDuration => boolean().withDefault(const Constant(false))();
  BoolColumn get showStartTime => boolean().withDefault(const Constant(true))();
  BoolColumn get showEndTime => boolean().withDefault(const Constant(true))();
  BoolColumn get hasSubtasks => boolean().withDefault(const Constant(false))();
  BoolColumn get hasNumericValues => boolean().withDefault(const Constant(false))();
  BoolColumn get hasTextValues => boolean().withDefault(const Constant(false))();
  BoolColumn get hasSelectionValues => boolean().withDefault(const Constant(false))();
  TextColumn get selectionOptions => text().nullable()();
  
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  List<String> get customConstraints => ['FOREIGN KEY (categoryId) REFERENCES categories(id) ON DELETE SET NULL'];
}