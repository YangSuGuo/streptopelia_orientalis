import 'package:drift/drift.dart';

class RecordStepConfigs extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录类型ID，不能为空
  IntColumn get recordTypeId => integer()();

  /// 步骤名称，不能为空
  TextColumn get stepName => text()();

  /// 步骤描述，可为空
  TextColumn get stepDescription => text().nullable()();

  /// 步骤顺序，不能为空
  IntColumn get stepOrder => integer()();

  /// 是否必需，默认为false
  BoolColumn get required => boolean().withDefault(const Constant(false))();

  /// 是否允许跳过，默认为true
  BoolColumn get allowSkip => boolean().withDefault(const Constant(true))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}