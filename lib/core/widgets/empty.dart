import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Empty extends ConsumerWidget {
  final IconData? icon;
  final double? iconSize;
  final Color? iconColor;
  final String? title;
  final String? subtitle;
  final bool isSliver;
  final EdgeInsets? padding;

  const Empty({
    super.key,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.title,
    this.subtitle,
    this.isSliver = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final List<Widget> children = [];

    // 图标
    if (icon != null) {
      children.add(Icon(icon, size: iconSize ?? 64, color: iconColor ?? colorScheme.primary.withAlpha(128)));
    }

    // 标题
    if (title != null) {
      children.add(
        Padding(
          padding: .only(top: 16.sp),
          child: Text(
            title!,
            style: theme.textTheme.titleMedium?.copyWith(color: colorScheme.onSurface, fontWeight: FontWeight.w600),
          ),
        ),
      );
    }

    // 副标题
    if (subtitle != null) {
      children.add(
        Padding(
          padding: .only(top: 8.sp),
          child: Text(
            subtitle!,
            style: theme.textTheme.bodySmall?.copyWith(color: colorScheme.onSurface.withOpacity(0.6)),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    // 空页面
    final empty = Padding(
      padding: padding ?? const .all(32),
      child: Center(
        child: Column(mainAxisSize: .min, mainAxisAlignment: .center, children: children),
      ),
    );

    return isSliver ? SliverFillRemaining(child: empty) : empty;
  }
}

extension Emptys on Empty {
  /// 无数据
  static Widget noData({String? title, String? subtitle, bool isSliver = false}) =>
      Empty(icon: Icons.add_circle_outline, title: title, subtitle: subtitle, isSliver: isSliver);

  /// 错误
  static Widget error({String? title, String? subtitle, bool isSliver = false}) =>
      Empty(icon: Icons.error_outline, title: title, subtitle: subtitle, isSliver: isSliver);

  /// Empty
  static Widget loading({bool isSliver = false}) => Empty(isSliver: isSliver);
}
