import 'package:drift/drift.dart';

class RecordPhotos extends Table {
  /// 主键ID，自动递增
  IntColumn get id => integer().autoIncrement()();

  /// 关联的记录ID，不能为空
  IntColumn get recordId => integer()();

  /// 照片路径，可为空
  TextColumn get photoPath => text().nullable()();

  /// 照片URL，可为空
  TextColumn get photoUrl => text().nullable()();

  /// 缩略图路径，可为空
  TextColumn get thumbnailPath => text().nullable()();

  /// 描述，可为空
  TextColumn get description => text().nullable()();

  /// 图片宽度，可为空
  IntColumn get width => integer().nullable()();

  /// 图片高度，可为空
  IntColumn get height => integer().nullable()();

  /// 文件大小，可为空
  IntColumn get fileSize => integer().nullable()();

  /// 排序序号，默认为0
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};
}