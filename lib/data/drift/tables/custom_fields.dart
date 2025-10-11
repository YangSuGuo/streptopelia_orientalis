import 'package:drift/drift.dart';

class CustomFields extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录类型ID
  IntColumn get recordTypeId => integer()();

  /// 字段名称
  TextColumn get fieldName => text()();

  /// 字段类型【text, number, date, boolean, select, image】
  TextColumn get fieldType => text()();

  /// 字段显示标签（显示名称）
  TextColumn get fieldLabel => text()();

  /// 字段配置信息（选项、验证规则等）
  TextColumn get fieldConfig => text().nullable()();

  /// 是否为必填字段，默认为false
  BoolColumn get isRequired => boolean().withDefault(const Constant(false))();

  /// 排序顺序，默认为0
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
