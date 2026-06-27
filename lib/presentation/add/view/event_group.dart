import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_glass_widgets/widgets/interactive/glass_button.dart';
import 'package:liquid_glass_widgets/widgets/surfaces/glass_app_bar.dart';

import '../../../core/themes/app_theme.dart';
import '../../../core/widgets/card/color_container.dart';

class EventGroup extends ConsumerWidget {
  const EventGroup({super.key, required this.scrollController, this.color = Colors.transparent});

  final ScrollController scrollController;
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final glassStyle = ColorContainerStyle(
      type: ColorContainerType.glassmorphism,
      borderRadius: 16.sp,
      colors: [
        context.colorScheme.surfaceContainerHighest,
        context.colorScheme.surfaceContainer,
      ],
    );

    final noHeaderConfig = const HeaderConfig(showHeader: false);
    final cardPadding = EdgeInsets.only(bottom: 16.sp);

    return CupertinoPageScaffold(
      navigationBar: GlassAppBar(
        padding: EdgeInsets.only(top: 10.sp, left: 10.sp, right: 10.sp),
        preferredSize: Size.fromHeight(44.sp),
        title: Text(
          '事件分组',
          style: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.label.resolveFrom(context)),
        ),
        leading: GlassButton(
          icon: const Icon(CupertinoIcons.back),
          onTap: () => Navigator.of(context).pop(),
          width: 44.sp,
          height: 44.sp,
          iconSize: 20.sp,
        ),
        actions: [SizedBox(width: 44.sp)],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 70.sp, left: 10.sp, right: 10.sp),
        child: CustomScrollView(
          controller: scrollController,
          primary: false,
          slivers: [
            // 1. 事件分组列表
            SliverToBoxAdapter(
              child: ColorContainer(
                title: '事件分组',
                outerPadding: cardPadding,
                style: glassStyle,
                headerConfig: noHeaderConfig,
                children: [
                  CupertinoListTile(
                    title: Text("未分类", style: context.textTheme.titleSmall),
                    leading: Container(
                      width: 24.sp,
                      height: 24.sp,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(borderRadius: context.radiusSM),
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                      child: Icon(Icons.home, size: 18.sp, color: context.colorScheme.onPrimary),
                    ),
                    leadingToTitle: 8.sp,
                    trailing: Icon(CupertinoIcons.checkmark_alt, color: context.colorScheme.onPrimaryContainer),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: context.colorScheme.outlineVariant,
                    indent: 16.sp,
                    endIndent: 8.sp,
                  ),
                  CupertinoListTile(
                    title: Text("未分类", style: context.textTheme.titleSmall),
                    leading: Container(
                      width: 24.sp,
                      height: 24.sp,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(borderRadius: context.radiusSM),
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                      child: Icon(Icons.home, size: 18.sp, color: context.colorScheme.onPrimary),
                    ),
                    leadingToTitle: 8.sp,
                  ),
                ],
              ),
            ),

            // 2. 添加分组按钮
            SliverToBoxAdapter(
              child: ColorContainer(
                title: '添加分组',
                outerPadding: cardPadding,
                style: glassStyle,
                headerConfig: noHeaderConfig,
                children: [
                  CupertinoListTile(
                    title: Text(
                      "添加分组",
                      style: context.textTheme.titleSmall?.copyWith(color: context.colorScheme.onPrimaryContainer),
                    ),
                    leading: Icon(
                      CupertinoIcons.plus_circle,
                      size: 18.sp,
                      color: context.colorScheme.onPrimaryContainer,
                    ),
                    leadingToTitle: 4.sp,
                    padding: EdgeInsets.only(left: 8.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}