import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:streptopelia_orientalis/core/themes/app_constants.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';
import 'package:streptopelia_orientalis/presentation/add/view/add_page.dart';
import 'package:streptopelia_orientalis/presentation/main/viewmodels/main_view_model.dart';

import '../../../core/utils/route_utils.dart';
import '../home/widget/init.dart';

class MainShell extends ConsumerStatefulWidget {
  const MainShell({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainShellState();
}

class _MainShellState extends ConsumerState<MainShell> {
  // 底部栏
  final List<GlassTab> _kTabs = [
    GlassTab(icon: Icon(CupertinoIcons.home), activeIcon: Icon(CupertinoIcons.house_fill), label: 'home'.tr()),
    GlassTab(
      icon: Icon(CupertinoIcons.circle_grid_hex),
      activeIcon: Icon(CupertinoIcons.circle_grid_hex_fill),
      label: 'summary'.tr(),
    ),
    GlassTab(icon: Icon(CupertinoIcons.person), activeIcon: Icon(CupertinoIcons.person_fill), label: 'my'.tr()),
  ];

  @override
  Widget build(BuildContext context) {
    final mainState = ref.watch(mainViewModelProvider);
    return Init(
      child: GlassScaffold(
        settings: AppConstants.kPillGlass(context),
        statusBarStyle: GlassStatusBarStyle.auto,
        // topEdgeFade: true,
        bottomEdgeFade: false,
        topEdgeFadeExtent: 0,
        bottomBarHeight: mainState.isMiniMode ? 20 : 40,
        bottomEdgeFadeExtent: 0,
        resizeToAvoidBottomInset: false,
        contentAwareBrightness: true,
        backgroundColor: context.colorScheme.surface,

        body: Padding(
          padding: .only(top: 0),
          child: SafeArea(child: widget.child),
        ),
        bottomBar: GlassTabBar.bottom(
          selectedIndex: mainState.currentIndex,
          onTabSelected: (index) {
            ref.read(mainViewModelProvider.notifier).handleTabSelected(index);
            context.go(homeIndexToPath(index));
          },
          settings: AppConstants.barGlassSettings(context),
          tabs: _kTabs,
          extraButton: GlassTabBarExtraButton(
            icon: Icon(CupertinoIcons.add),
            label: 'add'.tr(),
            onTap: () {
              Navigator.of(context).push(
                CupertinoSheetRoute<void>(
                  scrollableBuilder: (BuildContext context, ScrollController controller) =>
                      AddPage(scrollController: controller),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
