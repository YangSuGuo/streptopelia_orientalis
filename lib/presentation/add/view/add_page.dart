import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_glass_widgets/widgets/interactive/glass_button.dart';
import 'package:liquid_glass_widgets/widgets/surfaces/glass_app_bar.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';

import '../../../core/widgets/card/collapsible_item.dart';
import '../../../core/widgets/card/color_container.dart';
import '../viewmodels/add_view_model.dart';
import '../widget/entry_editor_card.dart';
import 'event_group.dart';

class AddPage extends ConsumerWidget {
  const AddPage({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final glassStyle = ColorContainerStyle(
      type: ColorContainerType.glassmorphism,
      colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
    );

    final cardPadding = EdgeInsets.only(bottom: 16.sp);

    return Stack(
      children: [
        CupertinoPageScaffold(
          navigationBar: GlassAppBar(
            padding: EdgeInsets.only(top: 10.sp, left: 10.sp, right: 10.sp),
            // preferredSize: Size.fromHeight(44.sp),
            title: Text(
              '添加事件',
              style: TextStyle(fontWeight: FontWeight.bold, color: CupertinoColors.label.resolveFrom(context)),
            ),
            leading: GlassButton(
              icon: const Icon(CupertinoIcons.back),
              onTap: () => Navigator.of(context).pop(),
              width: 44.sp,
              height: 44.sp,
              iconSize: 20.sp,
            ),
            actions: [
              GlassButton(
                icon: const Icon(CupertinoIcons.checkmark_alt),
                onTap: () {},
                width: 44.sp,
                height: 44.sp,
                iconSize: 20.sp,
                glowColor: CupertinoColors.activeBlue.resolveFrom(context),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 70.sp, left: 10.sp, right: 10.sp),
            child: CustomScrollView(
              controller: scrollController,
              primary: false,
              slivers: [
                // 1. 主题
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '主题',
                    outerPadding: cardPadding,
                    style: glassStyle,
                    headerConfig: const HeaderConfig(showHeader: false),
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

                // 2. 分组
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '事件分组',
                    outerPadding: cardPadding,
                    style: glassStyle,
                    headerConfig: const HeaderConfig(showHeader: false),
                    children: [
                      EntryItem(
                        title: "事件分组",
                        tip: ref.watch(addViewModelProvider).categoryTitle,
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoSheetRoute<void>(
                              scrollableBuilder: (BuildContext context, ScrollController controller) =>
                                  EventGroup(scrollController: controller),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                // 3. 数值
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '数值记录',
                    outerPadding: cardPadding,
                    style: glassStyle,
                    headerConfig: const HeaderConfig(actionType: HeaderActionType.switchMode),
                    animationConfig: const AnimationConfig(initiallyExpanded: false),
                    children: [
                      EntryItem(title: "询问标题", showTrailing: false),
                      EntryItem(title: "数值单位"),
                      EntryItem(title: "默认值"),
                      EntryItem(title: "快速填写列表"),
                    ],
                  ),
                ),

                // 4. 选项
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '选项记录',
                    outerPadding: cardPadding,
                    style: glassStyle,
                    headerConfig: const HeaderConfig(actionType: HeaderActionType.switchMode),
                    animationConfig: const AnimationConfig(initiallyExpanded: false),
                    children: [EntryItem(title: "可同时选择数量")],
                  ),
                ),

                // 5. 分布
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '分布记录',
                    outerPadding: cardPadding,
                    style: glassStyle,
                    headerConfig: const HeaderConfig(actionType: HeaderActionType.switchMode),
                    animationConfig: const AnimationConfig(initiallyExpanded: false),
                    children: [EntryItem(title: "一共多少步")],
                  ),
                ),

                // 6. 快速
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '快速记录',
                    outerPadding: cardPadding,
                    style: glassStyle,
                    headerConfig: const HeaderConfig(actionType: HeaderActionType.switchMode),
                    animationConfig: const AnimationConfig(initiallyExpanded: false),
                  ),
                ),

                // 7. 隐私安全
                SliverToBoxAdapter(
                  child: ColorContainer(
                    title: '隐私安全',
                    style: glassStyle,
                    headerConfig: const HeaderConfig(showArrow: false),
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
