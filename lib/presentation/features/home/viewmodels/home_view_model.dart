import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/drift/repositories/project_repository.dart';
import '../../../../data/drift/repositories/record_repository.dart';
import '../../../../data/hive/providers/home_projects_provider.dart';
import '../../../../di/logger.dart';
import '../../../../domain/entity/project.dart';
import 'home_state.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    return const HomeState();
  }

  /// 更新底部导航栏索引
  void updateCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  /// 获取指定项目的每日记录数量热力图数据
  Future<List<ContributionEntry>> getProjectDailyRecordCounts(int projectId, {int days = 140}) async {
    final recordRepository = ref.read(recordRepositoryProvider);
    final entries = await recordRepository.getDailyRecordCounts(projectId, days);
    return entries;
  }
}

@riverpod
Stream<List<Project>> filteredProjects(Ref ref) async* {
  final homeProjects = await ref.watch(homeProjectsStreamProvider.future);
  final projectRepository = ref.watch(projectRepositoryProvider);

  AppLogs().d('Filtered projects data: ${homeProjects.toString()}');

  yield* projectRepository.watchProjects(
    isHidden: homeProjects.showHiddenProjects ?? false ? null : false,
    isArchived: homeProjects.showArchivedProjects ?? false ? null : false,
    categoryId: homeProjects.categoryId,
    sortByWeight: homeProjects.sortByWeight ?? false,
    orderingMode: homeProjects.sortAscending ?? true ? OrderingMode.asc : OrderingMode.desc,
  );
}
