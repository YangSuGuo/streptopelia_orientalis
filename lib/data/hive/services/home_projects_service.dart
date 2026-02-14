import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/home_projects.dart';
import '../hive.dart';
import 'hive_storage_service.dart';

part 'home_projects_service.g.dart';

class HomeProjectsService extends HiveStorageService<HomeProjects> {
  @override
  Future<void> init(String boxName) async {
    await super.init(HiveConfig.homeProjectsBox);
  }

  @override
  Box<HomeProjects> get box => Hive.box<HomeProjects>(HiveConfig.homeProjectsBox);

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
  Stream<HomeProjects> watch(String key) async* {
    final initialValue = box.get(key);
    if (initialValue != null) {
      yield initialValue;
    }
    yield* box.watch(key: key).map((event) => get(key)).where((value) => value != null).map((value) => value!);
  }
}

@Riverpod(keepAlive: true)
Future<HomeProjectsService> homeProjectsService(Ref ref) async {
  return HomeProjectsService();
}