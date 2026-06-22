import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_glass_widgets/widgets/interactive/glass_button.dart';
import 'package:liquid_glass_widgets/widgets/surfaces/glass_app_bar.dart';

import '../../../core/widgets/card/collapsible_item.dart';
import '../../../core/widgets/card/color_container.dart';
import '../../../core/widgets/card/common_card.dart';

class AddPage extends ConsumerWidget {
  const AddPage({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        CupertinoPageScaffold(
          navigationBar: GlassAppBar(
            padding: .only(top: 10.sp, left: 10.sp, right: 10.sp),
            title: Text(
              '添加记录',
              style: TextStyle(
                // fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CupertinoColors.label.resolveFrom(context),
              ),
            ),
            leading: GlassButton(
              // quality: GlassQuality.premium,
              icon: const Icon(CupertinoIcons.back),
              onTap: () => Navigator.of(context).pop(),
              width: 44,
              height: 44,
              iconSize: 20,
            ),
            actions: [
              GlassButton(
                icon: const Icon(CupertinoIcons.checkmark_alt),
                onTap: () {},
                width: 44,
                height: 44,
                iconSize: 20,
                glowColor: CupertinoColors.activeBlue.resolveFrom(context),
              ),
            ],
          ),
          child: Padding(
            padding: .only(top: 50.sp, left: 10.sp, right: 10.sp),
            child: CustomScrollView(
              controller: scrollController,
              primary: false,
              slivers: [
                SliverToBoxAdapter(
                  child: CollapsibleItem(
                    title: '数值记录',
                    children: [
                      EntryItem(title: "标题", showTrailing: false),
                      EntryItem(title: "单位"),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: CollapsibleItem(
                    title: '数值记录',
                    children: [
                      EntryItem(title: "标题", showTrailing: false),
                      EntryItem(title: "单位"),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: CollapsibleItem(
                    title: '选项记录',
                    children: [EntryItem(title: "可同时选择数量")],
                  ),
                ),
                SliverToBoxAdapter(
                  child: CollapsibleItem(
                    title: '分布记录',
                    children: [EntryItem(title: "一共多少步")],
                  ),
                ),
                SliverToBoxAdapter(child: CollapsibleItem(title: '快速记录')),
                SliverToBoxAdapter(
                  child: CollapsibleItem(
                    title: '隐私安全',
                    children: [
                      EntryItem(title: "隐私保护"),
                      EntryItem(title: "地理位置记录"),
                      EntryItem(title: "照片信息记录"),
                      EntryItem(title: "设备信息记录"),
                      EntryItem(title: "日常通知"),
                      EntryItem(title: "存档备份"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
