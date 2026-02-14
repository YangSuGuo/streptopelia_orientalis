import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/hive/hive.dart';

import '../adapter/app_config_adapter.dart';
import '../entities/app_config.dart';
import 'hive_storage_service.dart';

part 'app_config_service.g.dart';

class AppConfigService extends HiveStorageService<AppConfig> {
  @override
  Future<void> init(String boxName) async {
    await super.init(HiveConfig.appConfigBox);
  }

  @override
  AppConfig? get(String key) => box.get(key);

  @override
  Box<AppConfig> get box => Hive.box<AppConfig>(HiveConfig.appConfigBox);

  @override
  Future<bool> put(String key, AppConfig value) async {
    await box.put(key, value);
    return true;
  }

  @override
  Future<bool> delete(String key) async {
    await box.delete(key);
    return true;
  }

  @override
  Stream<AppConfig?> watch(String key) {
    return box.watch(key: key).map((event) => get(key));
  }
}

@Riverpod(keepAlive: true)
AppConfigService appConfigService(Ref ref) {
  return AppConfigService();
}

