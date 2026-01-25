import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/ic.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
import 'package:liquid_tabbar_minimize/liquid_tabbar_minimize.dart';
import 'package:streptopelia_orientalis/core/utils/route_utils.dart';
import 'package:streptopelia_orientalis/di/logger.dart';
import 'package:streptopelia_orientalis/presentation/features/home/viewmodels/home_view_model.dart';
import 'package:streptopelia_orientalis/presentation/features/home/widget/init.dart';
import 'package:streptopelia_orientalis/presentation/features/home/widget/salomon_bottom_bar.dart';

class HomeShell extends ConsumerStatefulWidget {
  const HomeShell({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeShellState();
}

class _HomeShellState extends ConsumerState<HomeShell> {
  late final colorScheme = Theme.of(context).colorScheme;

  @override
  Widget build(BuildContext context) {
    final int currentIndex = ref.watch(homeViewModelProvider.select((value) => value.currentIndex));

    return Init(
      child: Scaffold(
        body: Stack(
          children: [
            widget.child, // 主页
            // SafeArea(child: _buildBottomNavigationBar(currentIndex), // 底部导航栏
            // ),
          ],
        ),
        bottomNavigationBar: LiquidBottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            // ref.read(homeViewModelProvider.notifier).setCurrentIndex(index);
            AppLogs().i(
              "index: ${ref.watch(homeViewModelProvider.select((value) => value.currentIndex))}",
            );
            context.go(homeIndexToPath(index));
          },
          items: const [
            LiquidTabItem(
              widget: Icon(Icons.home_outlined),
              selectedWidget: Icon(Icons.home),
              sfSymbol: 'house',
              selectedSfSymbol: 'house.fill',
              label: 'Home',
            ),
            LiquidTabItem(
              widget: Icon(Icons.home_outlined),
              selectedWidget: Icon(Icons.home),
              sfSymbol: 'house',
              selectedSfSymbol: 'house.fill',
              label: 'Home',
            ),
            LiquidTabItem(
              widget: Icon(Icons.home_outlined),
              selectedWidget: Icon(Icons.home),
              sfSymbol: 'house',
              selectedSfSymbol: 'house.fill',
              label: 'Home',
            )
          ],
          showActionButton: true,
          // actionIcon: (Icon(Icons.add), 'plus'),
          onActionTap: () => debugPrint('Action tapped'),
          labelVisibility: LabelVisibility.always,
          // onActionTap: () => debugPrint('Action'),
          // selectedItemColor: Colors.blue,
          // unselectedItemColor: Colors.amber,
          height: 68,
          bottomOffset: 10,
          // labelVisibility: LabelVisibility.selectedOnly,
          enableMinimize: true,
          collapseStartOffset: 20,
          forceCustomBar: false,
          // animationDuration: Duration(milliseconds: 250),
        ),
      ),
    );
  }

  // 底部导航栏
  Widget _buildBottomNavigationBar(int currentIndex) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: LiquidGlassLayer(
          settings: LiquidGlassSettings(
            blur: 2,
            thickness: 25,
            // refractiveIndex: 2,
            ambientStrength: 0.5,
            glassColor: colorScheme.inverseSurface.withAlpha(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             /* LiquidGlass.inLayer(
                shape: LiquidRoundedSuperellipse(borderRadius: const Radius.circular(40)),
                glassContainsChild: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SalomonBottomBar(
                    selectedItemColor: colorScheme.primary,
                    currentIndex: currentIndex,
                    onTap: (index) {
                      // ref.read(homeViewModelProvider.notifier).setCurrentIndex(index);
                      AppLogs().i(
                        "index: ${ref.watch(homeViewModelProvider.select((value) => value.currentIndex))}",
                      );
                      context.go(homeIndexToPath(index));
                    },
                    items: [
                      SalomonBottomBarItem(icon: Icon(Icons.home_outlined), title: Text("Home")),
                      SalomonBottomBarItem(icon: Icon(Icons.bar_chart), title: Text("Summary")),
                    ],
                  ),
                ),
              ),
              LiquidGlass.inLayer(
                shape: LiquidRoundedSuperellipse(borderRadius: const Radius.circular(40)),
                glassContainsChild: false,
                child: IconButton(
                  onPressed: () {
                    // todo 添加页面
                    // context.go(Routes.addPage),
                  },
                  icon: Iconify(Ic.baseline_add, color: colorScheme.inverseSurface),
                ),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
