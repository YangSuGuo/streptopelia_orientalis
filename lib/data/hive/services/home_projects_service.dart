import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../adapter/home_projects_adapter.dart';
import '../entities/home_projects.dart';
import '../hive.dart';
import 'hive_storage_service.dart';

part 'home_projects_service.g.dart';

class HomeProjectsService extends HiveStorageService<HomeProjects> {
  @override
  Future<void> init(String boxName) async {
    Hive.registerAdapter(HomeProjectsAdapter());
    await super.init(HiveConfig.homeProjectsBox);
  }

  @override
  HomeProjects? get(String key) => box.get(key);

  @override
  Future<bool> put(String key, HomeProjects value) async {
    await box.put(key, value);
    return true;
  }

  @override
  Future<bool> delete(String key) async {
    await box.delete(key);
    return true;
  }

  @override
  Stream<HomeProjects?> watch(String key) {
    return box.watch(key: key).map((event) => get(key));
  }
}

@Riverpod(keepAlive: true)
HomeProjectsService homeProjectsService(Ref ref) {
  return HomeProjectsService();
}