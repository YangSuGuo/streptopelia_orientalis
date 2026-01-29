import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_tabbar_minimize/liquid_tabbar_minimize.dart';
import 'package:streptopelia_orientalis/core/utils/route_utils.dart';
import 'package:streptopelia_orientalis/di/logger.dart';
import 'package:streptopelia_orientalis/presentation/features/home/viewmodels/home_view_model.dart';
import 'package:streptopelia_orientalis/presentation/features/home/widget/init.dart';

import '../../../../di/drift_provider.dart';

class HomeShell extends ConsumerStatefulWidget {
  const HomeShell({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeShellState();
}

class _HomeShellState extends ConsumerState<HomeShell> {
  late final colorScheme = Theme
      .of(context)
      .colorScheme;

  @override
  Widget build(BuildContext context) {
    final int currentIndex = ref.watch(homeViewModelProvider.select((value) => value.currentIndex));
    final db = ref.watch(databaseProvider);

    return Init(
      child: Scaffold(
        body: Stack(
          children: [
            widget.child
          ],
        ),
        bottomNavigationBar: LiquidBottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            ref.read(homeViewModelProvider.notifier).updateCurrentIndex(index);
            AppLogs().i(
              "index: ${ref.watch(homeViewModelProvider.select((value) => value.currentIndex))}",
            );
            context.go(homeIndexToPath(index));
          },
          items: [
            LiquidTabItem(
              widget: Icon(Icons.home_outlined),
              selectedWidget: Icon(Icons.home_rounded),
              sfSymbol: 'house',
              selectedSfSymbol: 'house.fill',
              label: 'home'.tr(),
            ),
            LiquidTabItem(
              widget: Icon(Icons.motion_photos_on_outlined),
              selectedWidget: Icon(Icons.motion_photos_on),
              sfSymbol: 'house',
              selectedSfSymbol: 'house.fill',
              label: 'summary'.tr(),
            ),
            LiquidTabItem(
              widget: Icon(Icons.person_outlined),
              selectedWidget: Icon(Icons.person),
              sfSymbol: 'house',
              selectedSfSymbol: 'house.fill',
              label: 'my'.tr(),
            )
          ],
          showActionButton: true,
          actionButton: ActionButtonConfig(Icon(Icons.add), 'plus'),
          onActionTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DriftDbViewer(db))),
          labelVisibility: LabelVisibility.always,
          height: 68,
          bottomOffset: 10,
          enableMinimize: true,
          collapseStartOffset: 20,
          forceCustomBar: false,
          animationDuration: Duration(milliseconds: 250),
        ),
      ),
    );
  }
}