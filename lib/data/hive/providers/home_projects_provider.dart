import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/home_projects.dart';
import '../hive.dart';
import '../services/home_projects_service.dart';

part 'home_projects_provider.g.dart';

@riverpod
class HomeProjectsProvider extends _$HomeProjectsProvider {
  static const String _key = HiveConfig.homeProjectsBox;

  @override
  Future<HomeProjects> build() async {
    final service = await ref.watch(homeProjectsServiceProvider.future);
    final config = service.get(_key);
    return config ?? const HomeProjects();
  }

  Future<void> updateHomeProjects(HomeProjects homeProjects) async {
    final service = await ref.read(homeProjectsServiceProvider.future);
    await service.put(_key, homeProjects);
    state = AsyncValue.data(homeProjects);
  }
}

@riverpod
Stream<HomeProjects> homeProjectsStream(Ref ref) async* {
  final service = await ref.watch(homeProjectsServiceProvider.future);
  yield* service.watch(HiveConfig.homeProjectsBox);
}