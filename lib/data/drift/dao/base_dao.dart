import 'package:drift/drift.dart';

import '../app_database.dart';

abstract class BaseDao<T extends Table, TId, TCompanion extends Insertable> {
  AppDatabase get db;

  Future<int> insert(TCompanion data);
  Future<List<Map<String, dynamic>>> findAllRaw();
  Future<List<T>> findAll();
  Future<T?> findById(TId id);
  Future<int> update(TId id, TCompanion data);
  Future<int> deleteById(TId id);
}