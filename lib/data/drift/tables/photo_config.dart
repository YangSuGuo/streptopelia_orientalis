import 'package:drift/drift.dart';

class PhotoConfig extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录类型ID，不能为空
  IntColumn get recordTypeId => integer()();

  /// 最大照片数量，默认为10
  IntColumn get maxPhotos => integer().withDefault(const Constant(10))();

  /// 是否必需照片，默认为false
  BoolColumn get requirePhoto => boolean().withDefault(const Constant(false))();

  /// 照片质量，默认为'medium'
  TextColumn get photoQuality => text().withDefault(const Constant('medium'))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}