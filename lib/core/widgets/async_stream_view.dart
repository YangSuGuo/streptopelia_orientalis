import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../di/logger.dart';
import 'empty.dart';

class AsyncStreamView<T> extends ConsumerWidget {
  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final Widget Function(Object error, StackTrace? stack)? error;
  final Widget? loading;
  final Widget Function()? empty;
  final bool skipLoadingOnRefresh;
  final bool skipLoadingOnReload;

  const AsyncStreamView({
    super.key,
    required this.value,
    required this.data,
    this.error,
    this.loading,
    this.empty,
    this.skipLoadingOnRefresh = false,
    this.skipLoadingOnReload = true,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return value.when(
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipLoadingOnReload: skipLoadingOnReload,
      data: (d) {
        if (empty != null && _isEmpty(d)) {
          return empty!();
        }
        return data(d);
      },
      error: (e, s) => error?.call(e, s) ?? _defaultError(e, s),
      loading: () => loading ?? _defaultLoading(),
    );
  }

  bool _isEmpty(dynamic d) {
    return switch (d) {
      List() => d.isEmpty,
      Map() => d.isEmpty,
      String() => d.isEmpty,
      _ => false,
    };
  }

  Widget _defaultLoading() => const Center(child: CircularProgressIndicator());

  Widget _defaultError(Object error, StackTrace s) {
    AppLogs().e('加载项目列表失败: $error');
    return Emptys.error(title: "发生错误！", subtitle: error.toString());
  }
}
