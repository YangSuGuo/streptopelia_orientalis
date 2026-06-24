import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:streptopelia_orientalis/core/themes/app_constants.dart';
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
  final List<GlassBottomBarTab> _kTabs = [
    GlassBottomBarTab(icon: Icon(CupertinoIcons.home), activeIcon: Icon(CupertinoIcons.house_fill), label: 'home'.tr()),
    GlassBottomBarTab(
      icon: Icon(CupertinoIcons.circle_grid_hex),
      activeIcon: Icon(CupertinoIcons.circle_grid_hex_fill),
      label: 'summary'.tr(),
    ),
    GlassBottomBarTab(
      icon: Icon(CupertinoIcons.person),
      activeIcon: Icon(CupertinoIcons.person_fill),
      label: 'my'.tr(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final mainState = ref.watch(mainViewModelProvider);
    return Init(
      child: GlassScaffold(
        settings: AppConstants.kPillGlass(context),
        statusBarStyle: GlassStatusBarStyle.auto,
        topEdgeFade: true,
        bottomEdgeFade: true,
        topEdgeFadeExtent: 0,
        bottomBarHeight: mainState.isMiniMode ? 20 : 40,
        bottomEdgeFadeExtent: 0,
        resizeToAvoidBottomInset: false,

        body: Stack(children: [SafeArea(child: widget.child)]),
        bottomBar: Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.viewPaddingOf(context).bottom * 0.5),
          child: GlassBottomBar(
            selectedIndex: mainState.currentIndex,
            onTabSelected: (index) {
              ref.read(mainViewModelProvider.notifier).handleTabSelected(index);
              context.go(homeIndexToPath(index));
            },
            settings: AppConstants.barGlassSettings(context),
            tabs: _kTabs,
            extraButton: GlassBottomBarExtraButton(
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
      ),
    );
  }
}
