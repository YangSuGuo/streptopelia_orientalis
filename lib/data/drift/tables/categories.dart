import 'package:drift/drift.dart';

class Categories extends Table {
  /// 分类的唯一标识符，自动递增的整数主键
  IntColumn get id => integer().autoIncrement()();

  /// 分类名称，不能为空
  TextColumn get name => text()();

  /// 分类描述，可为空
  TextColumn get description => text().nullable()();

  /// 分类颜色，用于界面显示，可为空
  TextColumn get color => text().nullable()();

  /// 父分类ID，用于构建分类层级结构，可为空
  IntColumn get parentId => integer().nullable()();

  /// 排序序号，用于控制分类显示顺序，默认为0
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  /// 创建时间，默认为当前时间
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}
