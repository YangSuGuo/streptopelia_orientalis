import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streptopelia_orientalis/core/widgets/card/common_card.dart';
import 'package:streptopelia_orientalis/core/widgets/card/info.dart';

import '../../../../di/logger.dart';
import '../viewmodels/home_projects_with_projects_provider.dart';
import '../viewmodels/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.watch(homeViewModelProvider.notifier);
    final stream = ref.watch(homeProjectsWithProjectsProvider);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CommonCard(
                type: CommonCardType.plain,
                info: Info(label: "简览", iconData: Icons.data_usage),
                onPressed: () {},
                child: Container(height: 200),
              ),
            ),
          ),
        ),

        stream.when(
          data: (projects) {
            if (projects.isEmpty) {
              return SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Center(
                    child: Text(
                      '暂无项目',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
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
                      info: Info(
                        label: project.name,
                        iconData: Icons.data_usage,
                      ),
                      onPressed: () {
                        AppLogs().i("当前项目: ${project.toJson().toString()}");
                      },
                      child: Container(height: 100),
                    ),
                  );
                },
              ),
            );
          },
          error: (error, stack) {
            return SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('加载失败: $error'),
              ),
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

        /*StreamBuilder<List<Project>>(
            stream: stream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 100,
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  );
                }

                if (snapshot.hasError) {
                  return SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('加载失败: ${snapshot.error}'),
                    ),
                  );
                }

                final projects = snapshot.data!;

                if (projects.isEmpty) {
                  return SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                      child: Center(
                        child: Text(
                          '暂无项目',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
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
                          info: Info(label: project.name, iconData: Icons.data_usage),
                          onPressed: () {
                            AppLogs().i("当前项目: ${project.toJson().toString()}");
                          },
                          child: Container(height: 100),
                        ),
                      );
                    },
                  ),
                );
              }
        )*/
      ]
    );
  }
}