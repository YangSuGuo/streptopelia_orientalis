import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FadeTransitionPage extends CustomTransitionPage {
  FadeTransitionPage({required LocalKey super.key, required super.child})
      : super(
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
}

/// GoRouter 路由的扩展方法
extension GoRouteExtension on GoRoute {
  /// 为路由页面添加淡入淡出过渡效果
  GoRoute fade() {
    return GoRoute(
        path: path,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return FadeTransitionPage(
            key: ValueKey<String>(path), // 使用路径作为页面唯一标识
            child: builder!(context, state),
          );
        });
  }
}
