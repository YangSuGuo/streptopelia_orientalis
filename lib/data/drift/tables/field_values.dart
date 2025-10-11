import 'package:drift/drift.dart';

class FieldValues extends Table {
  /// 主键，自动递增的ID
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录ID
  IntColumn get recordId => integer()();

  /// 自定义字段的ID
  IntColumn get customFieldId => integer()();

  /// 字段的值
  TextColumn get fieldValue => text()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
