import 'package:hive_ce_flutter/adapters.dart';

abstract class HiveStorageService<T> {
  late Box<T> box;

  Future<void> init(String boxName) async {
    box = await Hive.openBox<T>(boxName);
  }

  T? get(String key);

  Future<bool> put(String key, T value);

  Future<bool> delete(String key);

  Stream<T?> watch(String key);
}
