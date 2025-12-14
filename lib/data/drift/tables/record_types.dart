import 'package:drift/drift.dart';

class RecordTypes extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 分类ID，关联categories表
  IntColumn get categoryId => integer().nullable()();

  /// 记录类型名称
  TextColumn get name => text()();

  /// 记录类型描述
  TextColumn get description => text().nullable()();

  /// 记录类型图标
  TextColumn get icon => text().nullable()();

  /// 记录类型颜色
  TextColumn get color => text().nullable()();

  /// 是否启用该记录类型，默认为true
  BoolColumn get isEnabled => boolean().withDefault(const Constant(true))();

  /// 排序序号，用于控制显示顺序，默认为0
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  /// 配置信息，JSON格式存储
  TextColumn get configJson => text().nullable()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  /// 更新时间，默认为当前时间
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}
