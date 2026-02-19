import 'package:flutter/material.dart';

import 'info.dart';
import 'info_header.dart';

enum CommonCardType { plain, filled }

class CommonCard extends StatelessWidget {
  const CommonCard({
    super.key,
    bool? isSelected,
    this.type = CommonCardType.plain,
    this.onPressed,
    this.info,
    this.actions,
    this.selectWidget,
    this.radius = 12,
    this.enterAnimated = false,
    required this.child,
  }) : isSelected = isSelected ?? false;

  final bool enterAnimated;
  final bool isSelected;
  final void Function()? onPressed;
  final Widget? selectWidget;
  final Widget child;
  final Info? info;
  final List<Widget>? actions;
  final CommonCardType type;
  final double radius;

  @override
  Widget build(BuildContext context) {
    var childWidget = child;
    final colorScheme = Theme
        .of(context)
        .colorScheme;

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
        padding: const WidgetStatePropertyAll(.zero),
        shape: WidgetStatePropertyAll(
          RoundedSuperellipseBorder(
            borderRadius: .circular(radius),
          ),
        ),
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
    final colorScheme = Theme
        .of(context)
        .colorScheme;
    final hoverColor = isSelected
        ? colorScheme.primary.withAlpha(204)
        : colorScheme.primary.withAlpha(153);

    if (type == CommonCardType.filled) {
      return BorderSide.none;
    }

    if (states.contains(WidgetState.hovered) ||
        states.contains(WidgetState.focused) ||
        states.contains(WidgetState.pressed)) {
      return BorderSide(color: hoverColor);
    }

    return BorderSide(
      color: isSelected
          ? colorScheme.primary.withAlpha(153)
          : colorScheme.onSurface.withAlpha(31),
    );
  }

  // 颜色
  Color? _getBackgroundColor(BuildContext context, Set<WidgetState> states) {
    final colorScheme = Theme.of(context).colorScheme;
    if (type == CommonCardType.filled) {
      if (isSelected) {
        return colorScheme.secondaryContainer.withAlpha(204);
      }
      return colorScheme.surfaceContainerHigh;
    }
    if (isSelected) {
      return colorScheme.secondaryContainer;
    }
    return colorScheme.surfaceContainerLow;
  }

  Color? _getForegroundColor(BuildContext context, Set<WidgetState> states) {
    final colorScheme = Theme
        .of(context)
        .colorScheme;
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