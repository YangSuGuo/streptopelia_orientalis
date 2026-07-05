import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollapsibleItem extends StatefulWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final bool showDivider;
  final List<Widget> children;
  final bool initiallyExpanded;

  const CollapsibleItem({
    super.key,
    required this.title,
    this.padding,
    this.showDivider = true,
    this.children = const [],
    this.initiallyExpanded = true,
  });

  @override
  CollapsibleItemState createState() => CollapsibleItemState();
}

class CollapsibleItemState extends State<CollapsibleItem> with TickerProviderStateMixin {
  late bool _isExpanded;
  late AnimationController _controller;
  late Animation<double> _arrowAnimation;
  late Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;

    _controller = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
    _sizeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _arrowAnimation = Tween<double>(begin: 0, end: 0.5).animate(_controller);

    if (_isExpanded) {
      _controller.value = 1;
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Material(
        color: CupertinoColors.systemGrey6,
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            ClipRect(
              child: SizeTransition(
                sizeFactor: _sizeAnimation,
                axisAlignment: -1.0,
                child: Column(children: _buildChildren()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return GestureDetector(
      onTap: _toggleExpansion,
      child: Container(
        color: Colors.transparent,
        padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                widget.title,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, letterSpacing: 0.5),
              ),
            ),
            RotationTransition(turns: _arrowAnimation, child: Icon(CupertinoIcons.chevron_up, size: 18)),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildChildren() {
    final result = <Widget>[];
    for (int i = 0; i < widget.children.length; i++) {
      if (i > 0 && widget.showDivider) {
        result.add(Container(height: 0.5, margin: const EdgeInsets.symmetric(horizontal: 12)));
      }
      result.add(widget.children[i]);
    }
    return result;
  }
}

class EntryItem extends StatefulWidget {
  final String title;
  final String description;
  final double radius;
  final bool roundTop;
  final bool roundBottom;
  final bool showLeading;
  final bool showTrailing;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? descriptionColor;
  final CrossAxisAlignment crossAxisAlignment;
  final IconData leading;
  final Widget? leadingWidget;
  final String tip;
  final Function()? onTap;
  final double? paddingVertical;
  final double? paddingHorizontal;
  final double trailingLeftMargin;
  final bool dividerPadding;
  final IconData trailing;
  final double tipWidth;
  final double minTipWidth;
  final Widget? tipWidget;
  final bool ink;

  const EntryItem({
    super.key,
    this.title = "",
    this.description = "",
    this.radius = 8,
    this.roundTop = false,
    this.roundBottom = false,
    this.showLeading = false,
    this.showTrailing = true,
    this.backgroundColor,
    this.titleColor,
    this.descriptionColor,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.leading = CupertinoIcons.home,
    this.leadingWidget,
    this.tip = "",
    this.onTap,
    this.paddingVertical,
    this.paddingHorizontal,
    this.trailingLeftMargin = 5,
    this.dividerPadding = true,
    this.trailing = CupertinoIcons.chevron_right,
    this.tipWidth = 140,
    this.minTipWidth = 80,
    this.tipWidget,
    this.ink = true,
  });

  @override
  State<EntryItem> createState() => EntryItemState();
}

class EntryItemState extends State<EntryItem> {
  double get _paddingVertical => widget.paddingVertical ?? 14;

  double get _paddingHorizontal => widget.paddingHorizontal ?? 6;

  Color get _leadingColor => widget.titleColor ?? Theme.of(context).primaryColor;

  BorderRadius get _borderRadius => BorderRadius.vertical(
    top: widget.roundTop ? Radius.circular(widget.radius) : Radius.zero,
    bottom: widget.roundBottom ? Radius.circular(widget.radius) : Radius.zero,
  );

  @override
  Widget build(BuildContext context) {
    return widget.ink
        ? Material(
            color: Colors.transparent,
            borderRadius: _borderRadius,
            child: InkWell(
              borderRadius: _borderRadius,
              onTap: widget.onTap,
              child: Container(
                decoration: BoxDecoration(
                  color: widget.backgroundColor ?? Colors.transparent,
                  borderRadius: _borderRadius,
                ),
                padding: EdgeInsets.only(
                  top: _paddingVertical,
                  bottom: _paddingVertical,
                  left: _paddingHorizontal,
                  right: _paddingHorizontal + 6,
                ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _buildRowChildren()),
              ),
            ),
          )
        : GestureDetector(
            onTap: widget.onTap,
            child: Container(
              decoration: BoxDecoration(
                color: widget.backgroundColor ?? Colors.transparent,
                borderRadius: _borderRadius,
              ),
              padding: EdgeInsets.only(
                top: _paddingVertical,
                bottom: _paddingVertical,
                left: _paddingHorizontal,
                right: _paddingHorizontal + 6,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: _buildRowChildren()),
            ),
          );
  }

  List<Widget> _buildRowChildren() {
    final hasLeading = widget.showLeading || widget.leadingWidget != null;
    return [
      if (hasLeading) _buildLeadingIcon(),
      SizedBox(width: hasLeading ? 10 : 5),
      Expanded(child: _buildTextContent()),
      if (widget.tipWidget != null) const SizedBox(width: 10),
      if (widget.tipWidget != null) _buildCustomTipWidget(),
      if (widget.tipWidget == null) const SizedBox(width: 10),
      if (widget.tipWidget == null) _buildTipWidget(),
    ];
  }

  Widget _buildLeadingIcon() {
    if (widget.leadingWidget != null) {
      return Container(margin: const EdgeInsets.only(left: 4), child: widget.leadingWidget!);
    }
    return Container(
      width: 28,
      height: 28,
      margin: const EdgeInsets.only(left: 4),
      decoration: BoxDecoration(color: _leadingColor.withOpacity(0.1), borderRadius: BorderRadius.circular(7)),
      child: Icon(widget.leading, size: 15, color: _leadingColor),
    );
  }

  Widget _buildTextContent() {
    final titleStyle = Theme.of(context).textTheme.titleMedium?.copyWith(color: widget.titleColor);
    final descStyle = Theme.of(context).textTheme.bodySmall?.copyWith(color: widget.descriptionColor);

    return Column(
      crossAxisAlignment: widget.crossAxisAlignment,
      children: [
        Text(widget.title, style: titleStyle),
        if (widget.description.isNotEmpty) const SizedBox(height: 3),
        if (widget.description.isNotEmpty) Text(widget.description, style: descStyle),
      ],
    );
  }

  Widget _buildTipWidget() {
    if (!widget.showTrailing && widget.tip.isEmpty) {
      return const SizedBox.shrink();
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.tip.isNotEmpty)
          Flexible(
            child: Text(
              widget.tip,
              style: Theme.of(context).textTheme.bodySmall?.apply(color: Theme.of(context).textTheme.bodySmall?.color),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        if (widget.tip.isNotEmpty && widget.showTrailing) const SizedBox(width: 6),
        if (widget.showTrailing) Icon(widget.trailing, size: 16, color: Theme.of(context).textTheme.bodySmall?.color),
      ],
    );
  }

  Widget _buildCustomTipWidget() {
    return Container(
      constraints: BoxConstraints(
        minWidth: widget.minTipWidth,
        maxWidth: widget.description.isNotEmpty ? widget.tipWidth : widget.tipWidth + 40,
      ),
      child: widget.tipWidget!,
    );
  }
}
