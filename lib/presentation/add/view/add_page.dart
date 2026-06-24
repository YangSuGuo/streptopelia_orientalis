import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_glass_widgets/widgets/interactive/glass_button.dart';
import 'package:liquid_glass_widgets/widgets/surfaces/glass_app_bar.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';

import '../../../core/widgets/card/collapsible_item.dart';
import '../../../core/widgets/card/color_container.dart';
import '../widget/entry_editor_card.dart';

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
            padding: .only(top: 70.sp, left: 10.sp, right: 10.sp),
            child: CustomScrollView(
              controller: scrollController,
              primary: false,
              slivers: [
                // 主题
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '毛玻璃效果',
                    outerPadding: .only(bottom: 16.sp),
                    type: ColorContainerType.glassmorphism,
                    showArrow: false,
                    colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
                    // colors: [context.colorScheme.surfaceContainer],
                    children: [
                      EntryEditorCard(
                        emoji: "🍆",
                        titleController: TextEditingController(),
                        descriptionController: TextEditingController(),
                      ),
                      // todo 主题色选择
                    ],
                  ),
                ),
                // 分组
                SliverToBoxAdapter(
                  child: ColorContainer(
                    type: ColorContainerType.glassmorphism,
                    outerPadding: .only(bottom: 16.sp),
                    colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
                    title: '事件分组',
                    showArrow: false,
                    children: [
                      EntryItem(
                        title: "事件分组",
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoSheetRoute<void>(
                              scrollableBuilder: (BuildContext context, ScrollController controller) =>
                                  CupertinoPageScaffold(child: Column(children: [])),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: ColorContainer(
                    type: ColorContainerType.glassmorphism,
                    outerPadding: .only(bottom: 16.sp),
                    colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
                    title: '数值记录',
                    children: [
                      EntryItem(title: "标题", showTrailing: false),
                      EntryItem(title: "单位"),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: ColorContainer(
                    type: ColorContainerType.glassmorphism,
                    outerPadding: .only(bottom: 16.sp),
                    colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
                    title: '选项记录',
                    children: [EntryItem(title: "可同时选择数量")],
                  ),
                ),
                SliverToBoxAdapter(
                  child: ColorContainer(
                    type: ColorContainerType.glassmorphism,
                    outerPadding: .only(bottom: 16.sp),
                    colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
                    title: '分布记录',
                    children: [EntryItem(title: "一共多少步")],
                  ),
                ),
                SliverToBoxAdapter(
                  child: ColorContainer(
                    type: ColorContainerType.glassmorphism,
                    outerPadding: .only(bottom: 16.sp),
                    colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
                    title: '快速记录',
                  ),
                ),
                SliverToBoxAdapter(
                  child: ColorContainer(
                    type: ColorContainerType.glassmorphism,
                    colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
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
