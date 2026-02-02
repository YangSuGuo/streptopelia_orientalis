import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import '../../../../data/drift/entities/project.dart';
import '../../../../data/drift/providers/project_providers.dart';
import '../../../../data/hive/entities/home_projects.dart';
import '../../../../data/hive/services/hive_config_service.dart';
import 'home_state.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    ref.listen(filteredProjectsProvider, (previous, next) {
      next.when(
        data: (projects) {
          state = state.copyWith(recordCount: projects.length);
        },
        error: (error, stackTrace) {
          AppLogs().e('加载项目失败: $error');
        },
        loading: () {},
      );
    });
    return const HomeState();
  }

  /// 更新底部导航栏索引
  void updateCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  /// 获取筛选后的项目流（返回 Stream<List<Project>>）
  // Stream<List<Project>> getFilteredProjects() {
  //   return ref.watch(filteredProjectsProvider).when(
  //     data: (projects) => Stream.value(projects),
  //     error: (error, stackTrace) => Stream.error(error, stackTrace),
  //     loading: () => Stream.value([]),
  //   );
  // }

  /// 获取筛选后的项目流（返回 Stream<List<Project>>）
  Stream<List<Project>> getFilteredProjects() {
    final asyncValue = ref.watch(filteredProjectsProvider);
    AppLogs().i("filteredProjectsProvider state: ${asyncValue.toString()}");
    return asyncValue.maybeWhen(
      data: (projects) {
        AppLogs().i("Data branch: $projects");
        return Stream.value(projects);
      },
      orElse: () {
        AppLogs().e("获取项目列表失败");
        return Stream.value([Project(name: "错误")]);
      },
    );
  }



  /// 获取当前的项目列表（同步方法）
  List<Project> getCurrentFilteredProjects() {
    return ref.read(filteredProjectsProvider).maybeWhen(
      data: (projects) => projects,
      orElse: () => [],
    );
  }

  /// 获取当前 HomeProjects 设置
  HomeProjects? getHomeProjectsSettings() {
    final service = ref.read(hiveConfigServiceProvider);
    return service.getHomeProjects();
  }

  /// 更新 HomeProjects 设置
  Future<void> updateHomeProjectsSettings(HomeProjects newSettings) async {
    final service = ref.read(hiveConfigServiceProvider);
    await service.saveHomeProjects(newSettings);
  }

  /// 切换显示隐藏项目的设置
  Future<void> toggleShowHiddenProjects() async {
    final service = ref.read(hiveConfigServiceProvider);
    final currentSettings = service.getHomeProjects() ?? HomeProjects()
      ..showHiddenProjects = false
      ..showArchivedProjects = false
      ..sortByWeight = true
      ..sortAscending = true;

    final newSettings = HomeProjects()
      ..categoryId = currentSettings.categoryId
      ..showHiddenProjects = !currentSettings.showHiddenProjects
      ..showArchivedProjects = currentSettings.showArchivedProjects
      ..sortByWeight = currentSettings.sortByWeight
      ..sortAscending = currentSettings.sortAscending;

    await service.saveHomeProjects(newSettings);
  }

  /// 切换显示归档项目的设置
  Future<void> toggleShowArchivedProjects() async {
    final service = ref.read(hiveConfigServiceProvider);
    final currentSettings = service.getHomeProjects() ?? HomeProjects()
      ..showHiddenProjects = false
      ..showArchivedProjects = false
      ..sortByWeight = true
      ..sortAscending = true;

    final newSettings = HomeProjects()
      ..categoryId = currentSettings.categoryId
      ..showHiddenProjects = currentSettings.showHiddenProjects
      ..showArchivedProjects = !currentSettings.showArchivedProjects
      ..sortByWeight = currentSettings.sortByWeight
      ..sortAscending = currentSettings.sortAscending;

    await service.saveHomeProjects(newSettings);
  }

  /// 切换排序方式
  Future<void> toggleSortByWeight() async {
    final service = ref.read(hiveConfigServiceProvider);
    final currentSettings = service.getHomeProjects() ?? HomeProjects()
      ..showHiddenProjects = false
      ..showArchivedProjects = false
      ..sortByWeight = true
      ..sortAscending = true;

    final newSettings = HomeProjects()
      ..categoryId = currentSettings.categoryId
      ..showHiddenProjects = currentSettings.showHiddenProjects
      ..showArchivedProjects = currentSettings.showArchivedProjects
      ..sortByWeight = !currentSettings.sortByWeight
      ..sortAscending = currentSettings.sortAscending;

    await service.saveHomeProjects(newSettings);
  }

  /// 切换排序方向
  Future<void> toggleSortDirection() async {
    final service = ref.read(hiveConfigServiceProvider);
    final currentSettings = service.getHomeProjects() ?? HomeProjects()
      ..showHiddenProjects = false
      ..showArchivedProjects = false
      ..sortByWeight = true
      ..sortAscending = true;

    final newSettings = HomeProjects()
      ..categoryId = currentSettings.categoryId
      ..showHiddenProjects = currentSettings.showHiddenProjects
      ..showArchivedProjects = currentSettings.showArchivedProjects
      ..sortByWeight = currentSettings.sortByWeight
      ..sortAscending = !currentSettings.sortAscending;

    await service.saveHomeProjects(newSettings);
  }
}

// 提供一个监听器来获取项目数据
@riverpod
AsyncValue<List<Project>> homeProjects(Ref ref) {
  return ref.watch(filteredProjectsProvider);
}