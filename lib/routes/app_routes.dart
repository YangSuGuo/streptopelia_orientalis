import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streptopelia_orientalis/pages/home/home.dart';

abstract class RoutePath {
  static final rootNavigatorKey = GlobalKey<NavigatorState>();
  static const String home = '/';
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RoutePath.home,
    navigatorKey: RoutePath.rootNavigatorKey,
    debugLogDiagnostics: true,
    observers: [FlutterSmartDialog.observer],
    routes: [
      GoRoute(
        path: RoutePath.home,
        name: "home",
        pageBuilder: (context, state) => NoTransitionPage(key: state.pageKey, child: const Home()),
      ),
    ],
  );
});
