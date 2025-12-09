import 'package:flutter/material.dart';

import 'info.dart';

class InfoHeader extends StatelessWidget {
  final Info info;
  final List<Widget> actions;

  const InfoHeader({
    super.key,
    required this.info,
    List<Widget>? actions,
  }) : actions = actions ?? const [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (info.iconData != null) ...[
                Icon(
                  info.iconData,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 8,
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
              children: [
                ...actions,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
