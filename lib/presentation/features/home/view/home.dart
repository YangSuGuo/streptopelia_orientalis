import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streptopelia_orientalis/core/widgets/card/common_card.dart';
import 'package:streptopelia_orientalis/core/widgets/card/info.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import '../../../../data/drift/entities/project.dart';
import '../viewmodels/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    final viewModel = ref.watch(homeViewModelProvider.notifier);

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

        Consumer(
          builder: (context, ref, child) {
            final stream = viewModel.getFilteredProjects();
            AppLogs().i("stream: ${ stream.toString() }");

            return StreamBuilder<List<Project>>(
              stream: stream,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
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

                final projects = snapshot.data;
                // AppLogs().i(projects.toString());
                AppLogs().i(" 当前项目: ${ projects.toString() }");
                /*     if (projects.isEmpty) {
                  AppLogs().i(projects.toString());
                  return SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text('暂无项目'),
                    ),
                  );
                }*/

                return SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverList.builder(
                    itemCount: projects!.length,
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
              },
            );
          },
        ),
      ],
    );
  }
}