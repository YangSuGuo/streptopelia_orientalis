import 'package:hive/hive.dart';

@HiveType(typeId: 3)
class HomeProjects extends HiveObject {
  /// 分类 ID，可为空
  @HiveField(0)
  int? categoryId;

  /// 控制是否显示隐藏的项目
  @HiveField(1)
  bool showHiddenProjects = false;

  /// 控制是否显示已归档的项目
  @HiveField(2)
  bool showArchivedProjects = false;

  /// 控制是否按权重排序
  @HiveField(3)
  bool sortByWeight = false;

  /// 控制排序方向：true 为升序，false 为降序
  @HiveField(4)
  bool sortAscending = true;
}
