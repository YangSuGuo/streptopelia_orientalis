import 'package:drift/drift.dart';

class RecordTypes extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 记录类型名称
  TextColumn get name => text()();

  /// 记录类型描述
  TextColumn get description => text().nullable()();

  /// 记录类型图标
  TextColumn get icon => text().nullable()();

  /// 记录类型颜色
  TextColumn get color => text().nullable()();

  /// 记录类型配置信息
  TextColumn get config => text().nullable()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  /// 更新时间，默认为当前时间
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
