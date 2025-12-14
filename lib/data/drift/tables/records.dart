import 'package:drift/drift.dart';

class Records extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 记录类型ID，关联record_types表，不能为空
  IntColumn get recordTypeId => integer()();

  /// 记录标题
  TextColumn get title => text().nullable()();

  /// 记录内容，可为空
  TextColumn get content => text().nullable()();

  /// 开始时间，可为空
  DateTimeColumn get startTime => dateTime().nullable()();

  /// 结束时间，可为空
  DateTimeColumn get endTime => dateTime().nullable()();

  /// 持续时间（秒），可为空
  IntColumn get durationSeconds => integer().nullable()();

  /// 位置名称，可为空
  TextColumn get locationName => text().nullable()();

  /// 纬度，可为空
  RealColumn get latitude => real().nullable()();

  /// 经度，可为空
  RealColumn get longitude => real().nullable()();

  /// 定位精度，可为空
  RealColumn get accuracy => real().nullable()();

  /// 记录状态，默认为'draft'
  TextColumn get status => text().withDefault(const Constant('draft'))();

  /// 标签信息，JSON格式存储，可为空
  TextColumn get tagsJson => text().nullable()();

  /// 元数据信息，JSON格式存储，可为空
  TextColumn get metadataJson => text().nullable()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  /// 更新时间，默认为当前时间
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
