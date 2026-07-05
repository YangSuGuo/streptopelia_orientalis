import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CommonCardType { plain, filled }

class Info {
  final String label;
  final IconData? iconData;
  final String? emoji;

  const Info({required this.label, this.iconData, this.emoji});
}

class CommonCard extends StatelessWidget {
  const CommonCard({
    super.key,
    bool? isSelected,
    this.type = CommonCardType.plain,
    this.onPressed,
    this.info,
    this.padding,
    this.actions,
    this.selectWidget,
    this.radius = 12,
    required this.child,
  }) : isSelected = isSelected ?? false;

  final bool isSelected;
  final void Function()? onPressed;
  final Widget? selectWidget;
  final Widget child;
  final Info? info;
  final EdgeInsetsGeometry? padding;
  final List<Widget>? actions;
  final CommonCardType type;
  final double radius;

  @override
  Widget build(BuildContext context) {
    var childWidget = child;
    final colorScheme = Theme.of(context).colorScheme;

    if (info != null) {
      childWidget = Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 0,
            child: InfoHeader(info: info!, actions: actions),
          ),
          Flexible(child: child),
        ],
      );
    }

    if (selectWidget != null && isSelected) {
      final List<Widget> children = [];
      children.add(childWidget);
      children.add(Positioned.fill(child: selectWidget!));
      childWidget = Stack(children: children);
    }

    return OutlinedButton(
      clipBehavior: Clip.antiAlias,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(padding ?? EdgeInsets.zero),
        shape: WidgetStatePropertyAll(RoundedSuperellipseBorder(borderRadius: .circular(radius))),
        iconColor: WidgetStatePropertyAll(colorScheme.primary),
        iconSize: .all(20),
        backgroundColor: .resolveWith((states) => _getBackgroundColor(context, states)),
        foregroundColor: .resolveWith((states) => _getForegroundColor(context, states)),
        side: .resolveWith((states) => _getBorderSide(context, states)),
      ),
      onPressed: onPressed,
      child: childWidget,
    );
  }

  //  边框
  BorderSide _getBorderSide(BuildContext context, Set<WidgetState> states) {
    final colorScheme = Theme.of(context).colorScheme;
    final hoverColor = isSelected ? colorScheme.primary.withAlpha(204) : colorScheme.primary.withAlpha(153);

    if (type == CommonCardType.filled) {
      return BorderSide.none;
    }

    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.focused) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: hoverColor);
    }

    return BorderSide(color: isSelected ? colorScheme.primary.withAlpha(153) : colorScheme.onSurface.withAlpha(12));
  }

  // 颜色
  Color? _getBackgroundColor(BuildContext context, Set<WidgetState> states) {
    final colorScheme = Theme.of(context).colorScheme;
    if (type == CommonCardType.filled) {
      if (isSelected) {
        return colorScheme.secondaryContainer.withAlpha(204);
      }
      return colorScheme.surfaceContainerLowest;
    }
    if (isSelected) {
      return colorScheme.secondaryContainer;
    }
    return colorScheme.surfaceContainerLowest;
  }

  Color? _getForegroundColor(BuildContext context, Set<WidgetState> states) {
    final colorScheme = Theme.of(context).colorScheme;
    if (type == CommonCardType.filled) {
      if (isSelected) {
        return colorScheme.onSecondaryContainer;
      }
      return colorScheme.onSurfaceVariant;
    }
    if (isSelected) {
      return colorScheme.onSecondaryContainer;
    }
    return colorScheme.onSurfaceVariant;
  }
}

class InfoHeader extends StatelessWidget {
  final Info info;
  final List<Widget> actions;

  const InfoHeader({super.key, required this.info, List<Widget>? actions}) : actions = actions ?? const [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.sp, left: 16.sp, right: 16.sp),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              if (info.iconData != null) ...[
                Icon(info.iconData, color: Theme.of(context).colorScheme.primary),
              ] else if (info.emoji != null) ...[
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.15,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Text(
                          info.emoji!,
                          style: TextStyle(fontSize: 24.sp, color: Colors.white.withOpacity(0.6)),
                        ),
                      ),
                    ),

                    Text(info.emoji!, style: TextStyle(fontSize: 24.sp)),
                  ],
                ),
              ],
              Flexible(
                child: Text(
                  info.label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [...actions],
            ),
          ),
        ],
      ),
    );
  }
}
