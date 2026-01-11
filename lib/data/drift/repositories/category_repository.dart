import 'package:streptopelia_orientalis/data/drift/dao/category_dao.dart';

/// 分类数据仓库
/// 负责处理分类相关的数据库操作
class CategoryRepository {
  final CategoryDao _categoryDao;

  /// 构造函数
  /// [categoryDao] - 分类数据访问对象
  CategoryRepository(this._categoryDao);

}