import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_color.dart';
import 'package:material_color_utilities/dynamiccolor/material_dynamic_colors.dart';
import 'package:material_color_utilities/dynamiccolor/src/contrast_curve.dart';
import 'package:material_color_utilities/dynamiccolor/src/tone_delta_pair.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:streptopelia_orientalis/core/widgets/card/common_card.dart';
import 'package:streptopelia_orientalis/core/widgets/card/info.dart';

import '../../../../di/logger.dart';
import '../viewmodels/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.watch(homeViewModelProvider.notifier);
    final stream = ref.watch(filteredProjectsProvider);

    return CustomScrollView(
      slivers: [
        stream.when(
          data: (projects) {
            if (projects.isEmpty) {
              return SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Center(
                    child: Text('暂无项目', style: TextStyle(color: Colors.grey[600])),
                  ),
                ),
              );
            }

            return SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final project = projects[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: CommonCard(
                      type: CommonCardType.plain,
                      info: Info(label: project.name, emoji: project.icon),
                      onPressed: () {
                        AppLogs().i("当前项目: ${project.toJson().toString()}");
                      },
                      actions: [
                        MaterialButton(
                          padding: .all(5),
                          color: Colors.amber,
                          onPressed: () {
                          },
                          child: Icon(Icons.add)
                        ),
                      ],
                      child: FutureBuilder<List<ContributionEntry>>(
                        future: viewModel.getProjectDailyRecordCounts(
                          project.id ?? 0,
                          days: 140,
                        ),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return Container(
                              height: 100,
                              child: Center(child: CircularProgressIndicator()),
                            );
                          }

                          if (snapshot.hasError) {
                            AppLogs().e('加载热力图数据失败: ${snapshot.error}');
                            return Container(
                              height: 100,
                              child: Center(
                                child: Text(
                                  '数据加载失败',
                                  style: TextStyle(color: Colors.red[600]),
                                ),
                              ),
                            );
                          }

                          final entries = snapshot.data ?? [];

                          return IgnorePointer(
                              ignoring: true,
                              child: ContributionHeatmap(
                                  heatmapColor: HeatmapColor.green,
                                  showMonthLabels: false,
                                  weekdayLabel: WeekdayLabel.none,
                                  splittedMonthView: false,
                                  showCellDate: false,
                                  startWeekday: DateTime.monday,
                                  cellRadius: 3.0,
                                  minDate: DateTime.now().subtract(Duration(days: 140)),
                                  maxDate: DateTime.now().add(Duration(days: 1)),
                                  entries: entries
                              ));
                        },
                      ),
                    ),
                  );
                },
              ),
            );
          },
          error: (error, stack) {
            return SliverToBoxAdapter(
              child: Container(padding: EdgeInsets.symmetric(horizontal: 16), child: Text('加载失败: $error')),
            );
          },
          loading: () {
            AppLogs().i("加载中...");
            return SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 100,
                child: Center(child: CircularProgressIndicator()),
              ),
            );
          },
        ),
      ],

    );
  }
}
