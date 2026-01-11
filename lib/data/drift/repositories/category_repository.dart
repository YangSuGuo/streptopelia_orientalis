import '../../domain/entities/category.dart';
import '../app_database.dart';
import '../dao/category_dao.dart';
import 'base_repository.dart';

/// 分类数据仓库实现类
/// 提供对分类表的高级数据访问操作
class CategoryRepository implements BaseRepository<Category, int> {
  final CategoryDao _categoryDao;

  /// 构造函数，接收CategoryDao实例
  CategoryRepository(this._categoryDao);

  /// 保存分类实体到数据库
  /// 如果分类已存在则更新，否则插入新分类
  @override
  Future<Category> save(Category entity) async {
    // 将实体转换为数据库对象并保存
    final category = CategoriesCompanion(
      id: Value(entity.id),
      name: Value(entity.name),
      description: Value(entity.description),
      color: Value(entity.color),
      icon: Value(entity.icon),
      sortOrder: Value(entity.sortOrder),
      createdAt: Value(entity.createdAt),
      updatedAt: Value(entity.updatedAt),
    );
    
    if (entity.id != null && entity.id! > 0) {
      // 更新现有分类
      await _categoryDao.updateCategory(category);
      return entity;
    } else {
      // 插入新分类
      final id = await _categoryDao.insertCategory(category);
      return entity.copyWith(id: id);
    }
  }

  /// 根据ID查找分类
  /// 返回匹配的分类实体，如果未找到则返回null
  @override
  Future<Category?> findById(int id) async {
    final category = await _categoryDao.getCategoryById(id);
    if (category != null) {
      // 将数据库记录转换为实体
      return Category(
        id: category.id,
        name: category.name,
        description: category.description,
        color: category.color,
        icon: category.icon,
        sortOrder: category.sortOrder,
        createdAt: category.createdAt,
        updatedAt: category.updatedAt,
      );
    }
    return null;
  }

  /// 获取所有分类
  /// 返回所有分类实体的列表
  @override
  Future<List<Category>> findAll() async {
    final categories = await _categoryDao.getAllCategories();
    return categories.map((category) => Category(
      id: category.id,
      name: category.name,
      description: category.description,
      color: category.color,
      icon: category.icon,
      sortOrder: category.sortOrder,
      createdAt: category.createdAt,
      updatedAt: category.updatedAt,
    )).toList();
  }

  /// 删除分类实体
  /// 从数据库中删除匹配的分类并返回受影响的行数
  @override
  Future<int> delete(Category entity) async {
    if (entity.id != null) {
      return await _categoryDao.deleteCategory(entity.id!);
    }
    return 0;
  }

  /// 根据ID删除分类
  /// 从数据库中删除指定ID的分类并返回受影响的行数
  @override
  Future<int> deleteById(int id) async {
    return await _categoryDao.deleteCategory(id);
  }

  /// 根据名称查找分类
  /// 返回与指定名称匹配的分类
  Future<Category?> findByName(String name) async {
    final category = await _categoryDao.getCategoryByName(name);
    if (category != null) {
      return Category(
        id: category.id,
        name: category.name,
        description: category.description,
        color: category.color,
        icon: category.icon,
        sortOrder: category.sortOrder,
        createdAt: category.createdAt,
        updatedAt: category.updatedAt,
      );
    }
    return null;
  }

  /// 按排序顺序获取所有分类
  /// 返回按sortOrder排序的分类列表
  Future<List<Category>> findAllSorted() async {
    final categories = await _categoryDao.getAllCategoriesSorted();
    return categories.map((category) => Category(
      id: category.id,
      name: category.name,
      description: category.description,
      color: category.color,
      icon: category.icon,
      sortOrder: category.sortOrder,
      createdAt: category.createdAt,
      updatedAt: category.updatedAt,
    )).toList();
  }
}