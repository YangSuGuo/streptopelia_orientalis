import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/drift/repositories/project_repository.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import '../../hive/providers/home_projects_providers.dart';
import '../entities/project.dart';

part 'project_providers.g.dart';

@riverpod
Stream<List<Project>> filteredProjects(Ref ref) {
  final repository = ref.watch(projectRepositoryProvider);
  final homeProjectsStream = ref.watch(homeProjectsStreamProvider);

  return homeProjectsStream.when(
    data: (homeProjects) {
      return Stream.fromIterable([homeProjects]).asyncExpand((homeProjects) async* {
        bool? isHiddenFilter = homeProjects.showHiddenProjects ? null : false;
        bool? isArchivedFilter = homeProjects.showArchivedProjects ? null : false;
        final orderingMode = homeProjects.sortAscending ? OrderingMode.asc : OrderingMode.desc;

        AppLogs().i(
          '项目列表过滤条件: '
          'isHidden: $isHiddenFilter,'
          'isArchived: $isArchivedFilter,'
          'categoryId: ${homeProjects.categoryId},'
          'sortByWeight: ${homeProjects.sortByWeight},'
          'orderingMode: $orderingMode',
        );

        yield* repository.watchProjects(
          isHidden: isHiddenFilter,
          isArchived: isArchivedFilter,
          categoryId: homeProjects.categoryId,
          sortByWeight: homeProjects.sortByWeight,
          orderingMode: orderingMode,
        );
      });
    },
    loading: () => Stream.empty(),
    error: (_, _) => Stream.empty(),
  );
}
