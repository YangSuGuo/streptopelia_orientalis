import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:streptopelia_orientalis/presentation/features/home/view/home.dart';
import 'package:streptopelia_orientalis/presentation/features/setting/view/setting.dart';
import 'package:streptopelia_orientalis/presentation/features/summary/view/summary.dart';

import '../features/main_shell.dart';

abstract class RoutePath {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static const String home = '/home';
  static const String setting = '/setting';
  static const String summary = '/summary';
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RoutePath.home,
    navigatorKey: RoutePath.rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: [FlutterSmartDialog.observer],
    routes: [
      // 👇 ShellRoute 包裹带底部栏的页面
      ShellRoute(
        builder: (context, state, child) => MainShell(child: child),
        routes: [
          GoRoute(
            path: RoutePath.home,
            name: "home",
            pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const Home()),
          ),
          GoRoute(
            path: RoutePath.summary,
            name: "summary",
            pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const Summary()),
          ),
          GoRoute(
            path: RoutePath.setting,
            name: "settings",
            pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const Setting()),
          ),
        ],
      ),

      // 👇 不带底部栏的页面
    ],
  );
});
