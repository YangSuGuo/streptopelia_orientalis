import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:streptopelia_orientalis/core/themes/app_constants.dart';

enum ColorContainerType { glassmorphism, gradient, plain }

enum HeaderActionType { arrow, switchMode }

@immutable
class ColorContainerStyle {
  final ColorContainerType type;
  final List<Color> colors;
  final double borderRadius;
  final double blurSigma;
  final double gradientOpacity;
  final Color? titleColor;

  const ColorContainerStyle({
    this.type = ColorContainerType.gradient,
    this.colors = const [Color(0xFF667eea), Color(0xFF764ba2)],
    this.borderRadius = 12,
    this.blurSigma = 10,
    this.gradientOpacity = 0.25,
    this.titleColor,
  });
}

@immutable
class HeaderConfig {
  final bool showHeader;
  final bool showArrow;
  final HeaderActionType actionType;
  final EdgeInsetsGeometry padding;

  const HeaderConfig({
    this.showHeader = true,
    this.showArrow = true,
    this.actionType = HeaderActionType.arrow,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
  });
}

@immutable
class AnimationConfig {
  final bool initiallyExpanded;
  final Curve curve;
  final Duration duration;

  const AnimationConfig({
    this.initiallyExpanded = true,
    this.curve = Curves.easeInOut,
    this.duration = const Duration(milliseconds: 200),
  });
}

class ColorContainer extends StatefulWidget {
  final String title;
  final List<Widget> children;
  final EdgeInsetsGeometry outerPadding;
  final ValueChanged<bool>? onSwitchChanged;

  final ColorContainerStyle style;
  final HeaderConfig headerConfig;
  final AnimationConfig animationConfig;

  const ColorContainer({
    super.key,
    required this.title,
    this.children = const [],
    this.outerPadding = EdgeInsets.zero,
    this.onSwitchChanged,
    this.style = const ColorContainerStyle(),
    this.headerConfig = const HeaderConfig(),
    this.animationConfig = const AnimationConfig(),
  });

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> with SingleTickerProviderStateMixin {
  late bool _isExpanded;
  late AnimationController _controller;
  late Animation<double> _arrowAnimation;
  late Animation<double> _sizeAnimation;

  ColorContainerStyle get _style => widget.style;

  HeaderConfig get _header => widget.headerConfig;

  AnimationConfig get _anim => widget.animationConfig;

  @override
  void initState() {
    super.initState();
    _isExpanded = _anim.initiallyExpanded;

    _controller = AnimationController(duration: _anim.duration, vsync: this);
    _sizeAnimation = CurvedAnimation(parent: _controller, curve: _anim.curve);
    _arrowAnimation = Tween<double>(begin: 0, end: 0.5).animate(_controller);

    if (_isExpanded) {
      _controller.value = 1;
    }
  }

  @override
  void didUpdateWidget(covariant ColorContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_anim.duration != oldWidget.animationConfig.duration) {
      _controller.duration = _anim.duration;
    }
    if (_anim.curve != oldWidget.animationConfig.curve) {
      _sizeAnimation = CurvedAnimation(parent: _controller, curve: _anim.curve);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  Color _getDefaultTitleColor() {
    return Theme.of(context).colorScheme.onSurface;
  }

  Color _getBorderColor() {
    if (_style.colors.isNotEmpty) {
      return _style.colors.first.withValues(alpha: 0.4);
    }
    return Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.12);
  }

  LinearGradient _getGradient() {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: _style.type == ColorContainerType.glassmorphism
          ? _style.colors.map((c) => c.withValues(alpha: _style.gradientOpacity)).toList()
          : _style.colors,
    );
  }

  Color _getPlainBackgroundColor() {
    if (_style.colors.isNotEmpty) {
      return _style.colors.first;
    }
    return Theme.of(context).colorScheme.surfaceContainerHigh;
  }

  Decoration _getDecoration() {
    final shapeBorder = RoundedSuperellipseBorder(
      side: BorderSide(color: _getBorderColor(), width: 1),
      borderRadius: BorderRadius.circular(_style.borderRadius),
    );

    return switch (_style.type) {
      ColorContainerType.glassmorphism ||
      ColorContainerType.gradient => ShapeDecoration(shape: shapeBorder, gradient: _getGradient()),
      ColorContainerType.plain => ShapeDecoration(shape: shapeBorder, color: _getPlainBackgroundColor()),
    };
  }

  Widget _buildHeader() {
    final effectiveTitleColor = _style.titleColor ?? _getDefaultTitleColor();

    final titleWidget = Expanded(
      child: Text(
        widget.title,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 0.5, color: effectiveTitleColor),
      ),
    );

    final trailingWidget = _buildTrailingAction(effectiveTitleColor);

    final headerRow = Container(
      color: Colors.transparent,
      padding: _header.padding,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [titleWidget, trailingWidget]),
    );

    if (_header.actionType == HeaderActionType.switchMode) {
      return headerRow;
    }

    return GestureDetector(onTap: _toggleExpansion, behavior: HitTestBehavior.opaque, child: headerRow);
  }

  Widget _buildTrailingAction(Color effectiveTitleColor) {
    return switch (_header.actionType) {
      HeaderActionType.arrow =>
        _header.showArrow
            ? RotationTransition(
                turns: _arrowAnimation,
                child: Icon(CupertinoIcons.chevron_up, size: 18, color: effectiveTitleColor),
              )
            : const SizedBox.shrink(),
      HeaderActionType.switchMode => _buildSwitch(),
    };
  }

  Widget _buildSwitch() {
    return AdaptiveLiquidGlassLayer(
      settings: AppConstants.kPillGlass(context),
      child: GlassSwitch(
        value: _isExpanded,
        onChanged: (value) {
          _toggleExpansion();
          widget.onSwitchChanged?.call(value);
        },
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_header.showHeader) _buildHeader(),
        ClipRect(
          child: SizeTransition(
            sizeFactor: _sizeAnimation,
            alignment:.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: widget.children,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final content = _buildContent();

    final container = _style.type == ColorContainerType.glassmorphism
        ? ClipRSuperellipse(
            borderRadius: BorderRadius.circular(_style.borderRadius),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: _style.blurSigma, sigmaY: _style.blurSigma),
              child: Container(decoration: _getDecoration(), child: content),
            ),
          )
        : Container(decoration: _getDecoration(), clipBehavior: Clip.antiAlias, child: content);

    return Padding(padding: widget.outerPadding, child: container);
  }
}
