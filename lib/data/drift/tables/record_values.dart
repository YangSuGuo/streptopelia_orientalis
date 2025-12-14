import 'package:drift/drift.dart';

class RecordValues extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录ID，不能为空
  IntColumn get recordId => integer()();

  /// 字段名称，不能为空
  TextColumn get fieldName => text()();

  /// 字段值，实数类型
  RealColumn get fieldValue => real()();

  /// 单位，可为空
  TextColumn get unit => text().nullable()();

  /// 值类型，默认为'decimal'
  TextColumn get valueType => text().withDefault(const Constant('decimal'))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}