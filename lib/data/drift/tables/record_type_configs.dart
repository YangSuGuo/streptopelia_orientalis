import 'package:drift/drift.dart';

class RecordTypeConfigs extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录类型ID，不能为空
  IntColumn get recordTypeId => integer()();

  /// 配置键，不能为空
  TextColumn get configKey => text()();

  /// 配置值，可为空
  TextColumn get configValue => text().nullable()();

  /// 配置类型，默认为'string'
  TextColumn get configType => text().withDefault(const Constant('string'))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  /// 更新时间，默认为当前时间
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}