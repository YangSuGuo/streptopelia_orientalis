import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';
import 'package:streptopelia_orientalis/core/widgets/async_stream_view.dart';
import 'package:streptopelia_orientalis/core/widgets/card/common_card.dart';
import 'package:streptopelia_orientalis/core/widgets/empty.dart';

import '../../../../core/widgets/async_builder.dart';
import '../../../../di/logger.dart';
import '../../../../domain/entity/project.dart';
import '../viewmodels/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModelProvider.notifier);
    final stream = ref.watch(filteredProjectsProvider);

    return CustomScrollView(
      slivers: [
        AsyncStreamView<List<Project>>(
          value: stream,
          empty: () => Emptys.noData(title: "没有项目", subtitle: "请先添加项目", isSliver: true),
          loading: Emptys.loading(isSliver: true),
          error: (e, s) {
            AppLogs().e('加载项目列表失败: $e');
            return Emptys.error(title: "发生错误！", subtitle: e.toString(), isSliver: true);
          },
          data: (projects) {
            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CommonCard(
                      type: .plain,
                      info: Info(label: project.name, emoji: project.icon),
                      radius: 24.sp,
                      onPressed: () {
                        AppLogs().i("当前项目: ${project.toJson().toString()}");
                      },
                      padding: .symmetric(vertical: 4.sp, horizontal: 0.sp),
                      actions: [
                        MaterialButton(
                          minWidth: 34.sp,
                          height: 26.sp,
                          color: context.colorScheme.surface,
                          elevation: 0,
                          highlightElevation: 0,
                          padding: .symmetric(horizontal: 8.0, vertical: 4.0),
                          shape: RoundedSuperellipseBorder(
                            borderRadius: context.radiusFull,
                            side: BorderSide(color: context.colorScheme.outlineVariant.withAlpha(51)),
                            // side: BorderSide(color: context.colorScheme.onSurface.withAlpha(12)),
                          ),
                          textTheme: .accent,
                          onPressed: () {},
                          child: Icon(CupertinoIcons.ellipsis, color: context.colorScheme.primary),
                        ),
                        MaterialButton(
                          minWidth: 40.sp,
                          height: 40.sp,
                          color: context.colorScheme.primary,
                          elevation: 0.5,
                          highlightElevation: 0,
                          padding: .symmetric(horizontal: 8.0, vertical: 4.0),
                          shape: RoundedSuperellipseBorder(borderRadius: context.radiusFull),
                          textTheme: .accent,
                          onPressed: () {},
                          child: Icon(CupertinoIcons.checkmark_alt, color: context.colorScheme.surfaceContainerLow),
                          // Text("+1", style: TextStyle(color: context.colorScheme.surface)
                        ),
                      ],
                      child: Column(
                        children: [
                          Padding(
                            padding: .only(top: 8.sp),
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: context.colorScheme.outlineVariant,
                              indent: 8.sp,
                              endIndent: 8.sp,
                            ),
                          ),
                          AsyncBuilder<List<ContributionEntry>>(
                            future: viewModel.getProjectDailyRecordCounts(project.id ?? 0, days: 140),
                            onData: (context, entries) {
                              return IgnorePointer(
                                ignoring: true,
                                child: ContributionHeatmap(
                                  heatmapColor: HeatmapColor.blue,
                                  showMonthLabels: false,
                                  weekdayLabel: WeekdayLabel.none,
                                  splittedMonthView: false,
                                  showCellDate: false,
                                  startWeekday: DateTime.monday,
                                  cellRadius: 14.0,
                                  padding: .symmetric(vertical: 8.sp),
                                  minDate: DateTime.now().subtract(Duration(days: 7 * 20)),
                                  maxDate: DateTime.now().add(Duration(days: 0)),
                                  entries: entries,
                                ),
                              );
                            },
                            onLoading: (context) => Emptys.loading(),
                            onError: (context, error) => Emptys.error(title: "发生错误！", subtitle: "请检查数据库是否正常"),
                            onNoData: (context) => IgnorePointer(
                              ignoring: true,
                              child: ContributionHeatmap(
                                heatmapColor: HeatmapColor.blue,
                                showMonthLabels: false,
                                weekdayLabel: WeekdayLabel.none,
                                splittedMonthView: false,
                                showCellDate: false,
                                startWeekday: DateTime.monday,
                                cellSpacing: 3.4,
                                cellRadius: 14.0,
                                padding: .only(top: 12.sp, bottom: 12.sp),
                                minDate: DateTime.now().subtract(Duration(days: 7 * 20)),
                                maxDate: DateTime.now().add(Duration(days: 0)),
                                entries: [],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
