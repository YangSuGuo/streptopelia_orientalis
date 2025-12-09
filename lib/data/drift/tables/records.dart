import 'package:drift/drift.dart';

class Records extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 记录类型ID，关联record_types表
  IntColumn get recordTypeId => integer()();

  /// 记录标题
  TextColumn get title => text()();

  /// 记录内容，可为空
  TextColumn get content => text().nullable()();

  /// 元数据信息，JSON格式存储，可为空
  TextColumn get metadata => text().nullable()();

  /// 分类ID，关联categories表，可为空
  IntColumn get categoryId => integer().nullable()();

  /// 父级记录ID，用于建立记录间的层级关系，可为空
  IntColumn get parentId => integer().nullable()();

  /// 记录状态，默认为 active 【active, archived, deleted】
  TextColumn get status => text().withDefault(const Constant('active'))();

  /// 开始时间，可为空
  DateTimeColumn get startTime => dateTime().nullable()();

  /// 结束时间，可为空
  DateTimeColumn get endTime => dateTime().nullable()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  /// 更新时间，默认为当前时间
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
