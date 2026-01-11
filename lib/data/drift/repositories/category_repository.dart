import '../../models/category_model.dart';
import '../dao/category_dao.dart';
import '../entities/category.dart';

/// 分类数据仓库
/// 负责处理分类相关的数据库操作
class CategoryRepository {
  final CategoryDao _categoryDao;

  /// 构造函数
  /// [categoryDao] - 分类数据访问对象
  CategoryRepository(this._categoryDao);

  /// 添加分类
  /// [categoryModel] - 要添加的分类模型
  /// 返回新创建的分类ID
  Future<int> addCategory(CategoryModel categoryModel) async {
    final category = Category(
      name: categoryModel.name,
      description: categoryModel.description,
      color: categoryModel.color,
      icon: categoryModel.icon,
      sortOrder: categoryModel.sortOrder ?? 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await _categoryDao.insertCategory(category);
  }

  /// 获取所有分类
  /// 返回分类列表
  Future<List<CategoryModel>> getAllCategories() async {
    final categories = await _categoryDao.getAllCategories();
    return categories.map((entity) => CategoryModel.fromEntity(entity)).toList();
  }

  /// 根据ID获取分类
  /// [id] - 分类ID
  /// 返回对应的分类模型或null（如果不存在）
  Future<CategoryModel?> getCategoryById(int id) async {
    final category = await _categoryDao.getCategoryById(id);
    return category != null ? CategoryModel.fromEntity(category) : null;
  }

  /// 更新分类
  /// [categoryModel] - 要更新的分类模型
  /// 返回受影响的行数（通常为1表示成功，0表示失败）
  Future<int> updateCategory(CategoryModel categoryModel) async {
    if (categoryModel.id == null) {
      throw Exception('分类ID不能为空');
    }
    
    final category = Category(
      id: categoryModel.id!,
      name: categoryModel.name,
      description: categoryModel.description,
      color: categoryModel.color,
      icon: categoryModel.icon,
      sortOrder: categoryModel.sortOrder ?? 0,
      createdAt: categoryModel.createdAt ?? DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return await _categoryDao.updateCategory(category);
  }

  /// 删除分类
  /// [id] - 要删除的分类ID
  /// 返回受影响的行数（通常为1表示成功，0表示失败）
  Future<int> deleteCategory(int id) async {
    return await _categoryDao.deleteCategory(id);
  }
}