import 'package:drift/drift.dart';

abstract class BaseDao<T> {
  DatabaseConnection get connection;

  Future<int> insert(T entity);
  Future<int> update(T entity);
  Future<int> delete(int id);
  Future<List<T>> findAll();
  Future<T?> findById(int id);
}