import 'package:drift/drift.dart';

class RecordSteps extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录ID，不能为空
  IntColumn get recordId => integer()();

  /// 步骤名称，不能为空
  TextColumn get stepName => text()();

  /// 步骤顺序，不能为空
  IntColumn get stepOrder => integer()();

  /// 步骤状态，默认为'pending'
  TextColumn get stepStatus => text().withDefault(const Constant('pending'))();

  /// 完成时间，可为空
  DateTimeColumn get completedAt => dateTime().nullable()();

  /// 备注，可为空
  TextColumn get note => text().nullable()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}