import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/home_projects_provider.dart';

part 'home_projects.freezed.dart';

part 'home_projects.g.dart';

@freezed
abstract class HomeProjects with _$HomeProjects {
  const factory HomeProjects({
    int? categoryId,
    bool? showHiddenProjects,
    bool? showArchivedProjects,
    bool? sortByWeight,
    bool? sortAscending,
  }) = _HomeProjects;

  factory HomeProjects.fromJson(Map<String, dynamic> json) => _$HomeProjectsFromJson(json);
}

@riverpod
class HomeProjectsNotifier extends _$HomeProjectsNotifier {
  @override
  HomeProjects build() {
    return ref.watch(homeProjectsProvider) ?? const HomeProjects();
  }

  Future<void> updateHomeProjects(HomeProjects homeProjects) async {
    state = homeProjects;
    await ref.read(homeProjectsProviderProvider.notifier).updateHomeProjects(homeProjects);
  }
}