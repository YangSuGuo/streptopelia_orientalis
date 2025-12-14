import 'package:drift/drift.dart';

class RecordTags extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录ID，不能为空
  IntColumn get recordId => integer()();

  /// 标签名称，不能为空
  TextColumn get tagName => text()();

  /// 标签颜色，可为空
  TextColumn get tagColor => text().nullable()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}