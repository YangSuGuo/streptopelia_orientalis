import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/ic.dart';
import 'package:liquid_glass_renderer/liquid_glass_renderer.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:streptopelia_orientalis/core/utils/route_utils.dart';
import 'package:streptopelia_orientalis/di/logger.dart';
import 'package:streptopelia_orientalis/presentation/features/home/viewmodels/home_view_model.dart';
import 'package:streptopelia_orientalis/presentation/features/home/widget/init.dart';
import 'package:streptopelia_orientalis/presentation/features/home/widget/salomon_bottom_bar.dart';
import 'package:streptopelia_orientalis/presentation/routes/app_routes.dart';

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
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          leadingWidth: 60,
          title: Text(context.tr("app_title"), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  context.go(RoutePath.setting);
                },
                icon: const Icon(Icons.settings, size: 26),
                tooltip: context.tr("settings"),
              ),
            ),
          ],
          leading: leadingTime(colorScheme),
        ),
        body: Stack(
          children: [
            SafeArea(child: widget.child),
            SafeArea(
              child: Align(
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
                        LiquidGlass.inLayer(
                          shape: LiquidRoundedSuperellipse(borderRadius: const Radius.circular(40)),
                          glassContainsChild: false,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SalomonBottomBar(
                              selectedItemColor: colorScheme.primary,
                              currentIndex: currentIndex,
                              onTap: (index) {
                                ref.read(homeViewModelProvider.notifier).setCurrentIndex(index);
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 日期显示
  Widget leadingTime(ColorScheme colorScheme) {
    DateTime dateTime = DateTime.now();
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                DateFormat('dd').format(dateTime),
                style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat('MM月').format(dateTime),
                style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 1,
          height: 40,
          child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
        ),
      ],
    );
  }
}
