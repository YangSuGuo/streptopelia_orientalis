import 'package:drift/drift.dart';

class RecordLocations extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录ID，不能为空
  IntColumn get recordId => integer()();

  /// 纬度，可为空
  RealColumn get latitude => real().nullable()();

  /// 经度，可为空
  RealColumn get longitude => real().nullable()();

  /// 地址，可为空
  TextColumn get address => text().nullable()();

  /// 位置名称，可为空
  TextColumn get locationName => text().nullable()();

  /// 定位精度，可为空
  RealColumn get accuracy => real().nullable()();

  /// 海拔高度，可为空
  RealColumn get altitude => real().nullable()();

  /// 速度，可为空
  RealColumn get speed => real().nullable()();

  /// 方向，可为空
  RealColumn get heading => real().nullable()();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}