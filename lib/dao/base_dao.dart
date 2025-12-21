import 'package:drift/drift.dart';
import '../data/database.dart';

abstract class BaseDao<T extends Table, TId> {
  AppDatabase get db;

  Future<int> insert(T data);
  Future<List<T>> findAll();
  Future<T?> findById(TId id);
  Future<int> update(T data);
  Future<int> deleteById(TId id);
}