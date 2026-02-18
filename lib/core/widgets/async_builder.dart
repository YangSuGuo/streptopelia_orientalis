import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'empty.dart';

class AsyncBuilder<T> extends ConsumerWidget {
  final Future<T> future;
  final Widget Function(BuildContext, T) onData;
  final Widget Function(BuildContext)? onLoading;
  final Widget Function(BuildContext, Object?)? onError;
  final Widget Function(BuildContext)? onNoData;
  final bool refreshOnError;
  final VoidCallback? onRetry;

  const AsyncBuilder({
    required this.future,
    required this.onData,
    this.onLoading,
    this.onError,
    this.onNoData,
    this.refreshOnError = true,
    this.onRetry,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<T>(
      future: future,
      builder: (context, snapshot) {
        return _buildContent(context, snapshot);
      },
    );
  }

  Widget _buildContent(BuildContext context, AsyncSnapshot<T> snapshot) {
    // 1. 加载状态
    if (snapshot.connectionState == ConnectionState.waiting) {
      return onLoading?.call(context) ?? _defaultLoading(context);
    }

    // 2. 错误状态
    if (snapshot.hasError) {
      return onError?.call(context, snapshot.error) ?? _defaultError(context, snapshot.error);
    }

    // 3. 数据状态
    if (snapshot.hasData) {
      // 处理空数据（列表、字符串等）
      if (_isEmpty(snapshot.data)) {
        return onNoData?.call(context) ?? _defaultNoData(context);
      }
      return onData(context, snapshot.data!);
    }

    // 4. 完成但无数据
    if (snapshot.connectionState == ConnectionState.done) {
      return onNoData?.call(context) ?? _defaultNoData(context);
    }

    // 5. 其他状态（idle、active 等）
    return onLoading?.call(context) ?? _defaultLoading(context);
  }

  bool _isEmpty(dynamic d) {
    return switch (d) {
      List() => d.isEmpty,
      Map() => d.isEmpty,
      String() => d.isEmpty,
      _ => false,
    };
  }

  // 默认加载 UI
  Widget _defaultLoading(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }

  // 默认错误 UI
  Widget _defaultError(BuildContext context, Object? error) {
    return Emptys.error(title: "发生错误！", subtitle: error.toString());
  }

  // 默认无数据 UI
  Widget _defaultNoData(BuildContext context) {
    return Emptys.noData(title: "暂无数据", subtitle: "请检查数据", isSliver: true);
  }
}
