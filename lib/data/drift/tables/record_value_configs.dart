import 'package:drift/drift.dart';

class RecordValueConfigs extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录类型ID，不能为空
  IntColumn get recordTypeId => integer()();

  /// 字段名称，不能为空
  TextColumn get fieldName => text()();

  /// 字段标签，可为空
  TextColumn get fieldLabel => text().nullable()();

  /// 单位，可为空
  TextColumn get unit => text().nullable()();

  /// 最小值，可为空
  RealColumn get minValue => real().nullable()();

  /// 最大值，可为空
  RealColumn get maxValue => real().nullable()();

  /// 默认值，可为空
  RealColumn get defaultValue => real().nullable()();

  /// 是否必需，默认为false
  BoolColumn get isRequired => boolean().withDefault(const Constant(false))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}