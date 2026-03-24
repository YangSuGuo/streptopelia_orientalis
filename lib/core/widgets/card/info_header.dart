import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'info.dart';

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
