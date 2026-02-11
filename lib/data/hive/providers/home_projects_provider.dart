import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/home_projects.dart';
import '../hive.dart';
import '../services/home_projects_service.dart';

part 'home_projects_provider.g.dart';

@riverpod
class HomeProjectsProvider extends _$HomeProjectsProvider {
  static const String _key = 'home_projects';

  @override
  Future<HomeProjects> build() async {
    final service = ref.watch(homeProjectsServiceProvider);
    await service.init(HiveConfig.homeProjectsBox);
    final config = service.get(_key);
    return config ?? const HomeProjects();
  }

  Future<void> updateHomeProjects(HomeProjects homeProjects) async {
    final service = ref.read(homeProjectsServiceProvider);
    await service.put(_key, homeProjects);
    state = AsyncValue.data(homeProjects);
  }
}

@riverpod
Stream<HomeProjects> homeProjectsStream(Ref ref) {
  final service = ref.watch(homeProjectsServiceProvider);
  const key = HomeProjectsProvider._key;
  return service.watch(key).map((updatedHomeProjects) {
    return updatedHomeProjects ?? const HomeProjects();
  });
}