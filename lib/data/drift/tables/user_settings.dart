import 'package:drift/drift.dart';

class UserSettings extends Table {
  /// 用户设置表的主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 设置项的键名，唯一标识一个设置项
  TextColumn get settingKey => text().unique()();

  /// 设置项的值，存储具体的设置内容
  TextColumn get settingValue => text()();

  /// 设置项的值类型，默认为'string'（string, number, boolean, json）
  TextColumn get settingType => text().withDefault(const Constant('string'))();

  /// 记录创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  /// 记录更新时间，默认为当前时间
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}
