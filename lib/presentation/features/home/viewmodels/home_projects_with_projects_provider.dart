import 'dart:async';

import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/drift/entities/project.dart';
import '../../../../data/drift/repositories/project_repository.dart';
import '../../../../data/hive/entities/home_projects.dart';
import '../../../../data/hive/providers/home_projects_provider.dart';

part 'home_projects_with_projects_provider.g.dart';


class _ProjectStreamManager {
  StreamSubscription<List<Project>>? _subscription;
  StreamController<List<Project>>? _controller;

  void updateQuery(
      Ref ref,
      HomeProjects homeProjects,
      StreamController<List<Project>> controller,
      ProjectRepository projectRepository,
      ) {
    // 关闭旧的控制器
    _controller?.close();
    _controller = controller;

    // 取消之前的订阅
    _subscription?.cancel();

    // 构建查询参数，根据 HomeProjects 配置进行过滤
    final isHiddenFilter = (homeProjects.showHiddenProjects ?? false) ? null : false;
    final isArchivedFilter = (homeProjects.showArchivedProjects ?? false) ? null : false;
    final categoryIdFilter = homeProjects.categoryId;

    // 排序模式
    final orderingMode = (homeProjects.sortAscending ?? true)
        ? OrderingMode.asc
        : OrderingMode.desc;

    // 使用 projectRepository 查询数据库
    final projectsStream = projectRepository.watchProjects(
      isHidden: isHiddenFilter,
      isArchived: isArchivedFilter,
      categoryId: categoryIdFilter,
      sortByWeight: homeProjects.sortByWeight,
      orderingMode: orderingMode,
    );

    // 开始新的订阅
    _subscription = projectsStream.listen(
          (projects) {
        // 再次根据配置进行过滤（因为数据库层面可能没有完全过滤）
        final filteredProjects = projects.where((project) {
          // 如果不显示隐藏项目，则排除隐藏的项目
          if (!(homeProjects.showHiddenProjects ?? false) && project.isHidden == true) {
            return false;
          }

          // 如果不显示归档项目，则排除归档的项目的
          if (!(homeProjects.showArchivedProjects ?? false) && project.isArchived == true) {
            return false;
          }

          // 如果设置了特定分类ID，则只显示该分类下的项目
          if (homeProjects.categoryId != null &&
              project.categoryId != homeProjects.categoryId) {
            return false;
          }

          return true;
        }).toList();

        _controller?.add(filteredProjects);
      },
      onError: (error) {
        print('Error in projects stream: $error');
        _controller?.addError(error);
      },
    );
  }

  void dispose() {
    _subscription?.cancel();
    _controller?.close();
  }
}

@riverpod
Stream<List<Project>> homeProjectsWithProjects(Ref ref) {
  final manager = _ProjectStreamManager();
  final controller = StreamController<List<Project>>();

  // 监听 HomeProjects 配置的变化
  ref.listen<AsyncValue<HomeProjects>>(homeProjectsStreamProvider, (previous, next) {
    if (next case AsyncData(:final value)) {
      // 配置发生变化时，重新建立项目查询
      final projectRepository = ref.read(projectRepositoryProvider);
      manager.updateQuery(ref, value, controller, projectRepository);
    } else if (next case AsyncError(:final error)) {
      print('Error loading home projects config: $error');
      controller.add([]);
    }
  });

  // 初始设置
  final initialAsyncValue = ref.read(homeProjectsStreamProvider);
  if (initialAsyncValue case AsyncData(:final value)) {
    final projectRepository = ref.read(projectRepositoryProvider);
    manager.updateQuery(ref, value, controller, projectRepository);
  }

  ref.onDispose(() {
    manager.dispose();
  });

  return controller.stream;
}