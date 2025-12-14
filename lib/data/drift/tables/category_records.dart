import 'package:drift/drift.dart';

class CategoryRecords extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的分类ID，不能为空
  IntColumn get categoryId => integer()();

  /// 关联的记录ID，不能为空
  IntColumn get recordId => integer()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}