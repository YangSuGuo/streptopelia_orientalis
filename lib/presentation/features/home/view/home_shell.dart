import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            widget.child,
            Align(
              alignment: Alignment.center,
              // padding: EdgeInsets.only(bottom: 30),
              child: SizedBox(
                height: 170,
                child: LiquidGlassLayer(
                  settings: LiquidGlassSettings(
                    blur: 2,
                    thickness: 25,
                    // refractiveIndex: 2,
                    ambientStrength: 0.5,
                    glassColor: colorScheme.inverseSurface.withAlpha(35),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LiquidGlass.inLayer(
                        shape: LiquidRoundedSuperellipse(borderRadius: const Radius.circular(40)),
                        glassContainsChild: false,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SalomonBottomBar(
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
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: LiquidGlass.inLayer(
                          shape: LiquidRoundedSuperellipse(borderRadius: const Radius.circular(40)),
                          glassContainsChild: false,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Iconify(Ic.baseline_add, color: colorScheme.inverseSurface),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
