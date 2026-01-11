/// 基础仓库类，定义通用的数据访问方法
abstract class BaseRepository<T, IdType> {
  /// 添加单个实体
  Future<T> add(T entity);

  /// 根据ID查找实体
  Future<T?> findById(IdType id);

  /// 查找所有实体
  Future<List<T>> findAll();

  /// 删除实体
  Future<int> delete(T entity);

  /// 根据ID删除实体
  Future<int> deleteById(IdType id);
}