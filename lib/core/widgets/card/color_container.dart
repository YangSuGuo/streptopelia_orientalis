import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum ColorContainerType { glassmorphism, gradient, plain }

class ColorContainer extends StatefulWidget {
  final String title;
  final ColorContainerType type;
  final List<Color> colors;
  final List<Widget> children;
  final bool initiallyExpanded;
  final bool showArrow;
  final Curve curve;
  final Duration duration;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry outerPadding;
  final double blurSigma;
  final double gradientOpacity;
  final Color? titleColor;

  const ColorContainer({
    super.key,
    required this.title,
    this.type = ColorContainerType.gradient,
    this.colors = const [Color(0xFF667eea), Color(0xFF764ba2)],
    this.children = const [],
    this.initiallyExpanded = true,
    this.showArrow = true,
    this.curve = Curves.easeInOut,
    this.duration = const Duration(milliseconds: 200),
    this.borderRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
    this.outerPadding = EdgeInsets.zero,
    this.blurSigma = 10,
    this.gradientOpacity = 0.25,
    this.titleColor,
  });

  @override
  State<ColorContainer> createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> with SingleTickerProviderStateMixin {
  late bool _isExpanded;
  late AnimationController _controller;
  late Animation<double> _arrowAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;

    _controller = AnimationController(duration: widget.duration, vsync: this);
    _sizeAnimation = CurvedAnimation(parent: _controller, curve: widget.curve);
    _arrowAnimation = Tween<double>(begin: 0, end: 0.5).animate(_controller);

    if (_isExpanded) {
      _controller.value = 1;
    }
  }

  @override
  void didUpdateWidget(covariant ColorContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.duration != oldWidget.duration) {
      _controller.duration = widget.duration;
    }
    if (widget.curve != oldWidget.curve) {
      _sizeAnimation = CurvedAnimation(parent: _controller, curve: widget.curve);
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
      _isExpanded ? _controller.forward() : _controller.reverse();
    });
  }

  //region 样式获取

  Color _getDefaultTitleColor() {
    switch (widget.type) {
      case ColorContainerType.glassmorphism:
      case ColorContainerType.gradient:
        return Theme.of(context).colorScheme.onSurface;
      case ColorContainerType.plain:
        return Theme.of(context).colorScheme.onSurface;
    }
  }

  Color _getBorderColor() {
    if (widget.colors.isNotEmpty) {
      return widget.colors.first.withAlpha(102);
    }
    return Theme.of(context).colorScheme.onSurface.withAlpha(31);
  }

  LinearGradient _getGradient() {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: widget.type == ColorContainerType.glassmorphism
          ? widget.colors.map((c) => c.withValues(alpha: widget.gradientOpacity)).toList()
          : widget.colors,
    );
  }

  Color _getPlainBackgroundColor() {
    if (widget.colors.isNotEmpty) {
      return widget.colors.first;
    }
    return Theme.of(context).colorScheme.surfaceContainerHigh;
  }

  Decoration _getDecoration() {
    //超椭圆矩形
    final shapeBorder = RoundedSuperellipseBorder(
      side: BorderSide(color: _getBorderColor(), width: 1),
      borderRadius: BorderRadius.circular(widget.borderRadius),
    );

    switch (widget.type) {
      case ColorContainerType.glassmorphism:
        return ShapeDecoration(shape: shapeBorder, gradient: _getGradient());
      case ColorContainerType.gradient:
        return ShapeDecoration(shape: shapeBorder, gradient: _getGradient());
      case ColorContainerType.plain:
        return ShapeDecoration(shape: shapeBorder, color: _getPlainBackgroundColor());
    }
  }

  //region 组件构建

  Widget _buildHeader() {
    final effectiveTitleColor = widget.titleColor ?? _getDefaultTitleColor();

    return GestureDetector(
      onTap: _toggleExpansion,
      child: Container(
        color: Colors.transparent,
        padding: widget.padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                  color: effectiveTitleColor,
                ),
              ),
            ),
            // GlassSwitch(value: _isExpanded, onChanged: (_) {}),
            RotationTransition(
              turns: _arrowAnimation,
              child: Icon(CupertinoIcons.chevron_up, size: 18, color: effectiveTitleColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.showArrow) _buildHeader(),
        ClipRect(
          child: SizeTransition(
            sizeFactor: _sizeAnimation,
            axisAlignment: -1.0,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: widget.children),
          ),
        ),
      ],
    );
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    final content = _buildContent();

    Widget container;

    if (widget.type == ColorContainerType.glassmorphism) {
      container = ClipRSuperellipse(
        borderRadius: BorderRadius.circular(widget.borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: widget.blurSigma, sigmaY: widget.blurSigma),
          child: Container(decoration: _getDecoration(), child: content),
        ),
      );
    } else {
      container = Container(decoration: _getDecoration(), clipBehavior: Clip.antiAlias, child: content);
    }

    return Padding(padding: widget.outerPadding, child: container);
  }
}
