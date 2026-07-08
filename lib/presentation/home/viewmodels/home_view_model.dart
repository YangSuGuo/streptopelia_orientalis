import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';
import 'package:streptopelia_orientalis/core/themes/hct_palette_result.dart';

import '../../../../data/drift/repositories/project_repository.dart';
import '../../../../data/drift/repositories/record_repository.dart';
import '../../../../data/hive/providers/home_projects_provider.dart';
import '../../../../di/logger.dart';
import '../../../../domain/entity/project.dart';
import '../../../../domain/entity/records.dart';
import '../../../../domain/usecases/record_batch.dart';
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

  /// 快速添加记录：直接从 Project 获取 ID 和子表启用状态
  Future<bool> addRecord(Project project, {String? title, String? content}) async {
    try {
      final now = DateTime.now();
      final record = Records(
        projectId: project.id!,
        title: title?.trim().isNotEmpty == true ? title!.trim() : project.name,
        content: content,
        isArchived: false,
        isHidden: false,
        updatedAt: now,
        createdAt: now,
      );

      final batch = RecordBatch(record: record);
      final recordRepository = ref.read(recordRepositoryProvider);
      await recordRepository.addCompleteRecord(batch);
      return true;
    } catch (e) {
      AppLogs().e('添加记录失败: $e');
      return false;
    }
  }

  /// 获取热力图颜色映射闭包 (支持平滑过渡与阶梯跳变)
  /// todo 优化颜色
  Color Function(int) getHeatmapColorScale({
    required String? projectColor,
    required BuildContext context,
    int maxValue = 20,
    int steppedLevels = 0,
    Curve curve = Curves.linear,
  }) {
    final hex = (projectColor?.isNotEmpty ?? false) ? projectColor! : '#228fbd';
    final result = generateAdaptiveHctPalette(hex, context);
    final isDark = context.isDarkMode;

    const toneStart = 95;
    const toneEnd = 55;

    return (int value) {
      if (value == 0) {
        return context.colorScheme.primary.withValues(alpha: isDark ? 0.32 : 0.08);
      }

      double progress = (value / maxValue).clamp(0.0, 1.0);
      progress = curve.transform(progress);

      if (steppedLevels > 0) {
        final level = (progress * steppedLevels).ceil();
        progress = level / steppedLevels;
      }

      int targetIndex;
      if (isDark) {
        // 深色模式：从 darkToneStart 平滑过渡到 darkToneEnd
        targetIndex = (toneEnd - (toneStart - toneEnd) * progress).round();
        debugPrint('tone: $targetIndex');
      } else {
        // 浅色模式：从 lightToneStart 平滑过渡到 lightToneEnd (注意是递减)
        targetIndex = (toneStart - (toneStart - toneEnd) * progress).round();
        debugPrint('tone: $targetIndex');
      }

      return result.palette[targetIndex.clamp(0, 99)];
    };
  }

  /// 生成假数据
  Future<List<ContributionEntry>> getMockContributions() async {
    final now = DateTime.now();
    return List.generate(140, (index) {
      final date = now.subtract(Duration(days: 140 - index));
      final normalizedDate = DateTime(date.year, date.month, date.day);

      // 从 0 逐渐增加到 20
      final count = (index * 20 / 139).round();
      // AppLogs().d('entry: $normalizedDate $count');

      return ContributionEntry(normalizedDate, count);
    });
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
