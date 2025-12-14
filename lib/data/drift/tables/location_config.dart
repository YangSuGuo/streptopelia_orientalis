import 'package:drift/drift.dart';

class LocationConfig extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录类型ID，不能为空
  IntColumn get recordTypeId => integer()();

  /// 是否必需位置信息，默认为false
  BoolColumn get requireLocation => boolean().withDefault(const Constant(false))();

  /// 位置精度，默认为'high'
  TextColumn get locationAccuracy => text().withDefault(const Constant('high'))();

  /// 位置超时时间，默认为30000毫秒
  IntColumn get locationTimeout => integer().withDefault(const Constant(30000))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}