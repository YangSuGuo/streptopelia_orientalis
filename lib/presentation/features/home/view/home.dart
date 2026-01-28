import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streptopelia_orientalis/core/widgets/card/common_card.dart';
import 'package:streptopelia_orientalis/core/widgets/card/info.dart';

import '../../../../di/drift_provider.dart';
import '../viewmodels/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch(homeViewModelAutoUpdateProvider);

    final state = ref.watch(homeViewModelProvider);
    final db = ref.watch(databaseProvider);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CommonCard(
                type: .plain,
                info: Info(label: "简览", iconData: Icons.data_usage),
                onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context) => DriftDbViewer(db)));},
                child: Container(height: 200),
              ),
            ),
          ),
        ),

        SliverList.builder(
            itemCount: state.recordCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CommonCard(
                  type: CommonCardType.plain,
                  info: Info(label: "简览", iconData: Icons.data_usage),
                  onPressed: () {

                    // AppLogs().i(state.recordTypeEntity.toString());
                  },
                  child: Container(height: 200),
                ),
              );
            }

        )
      ],
    );
  }
}
