import 'dart:io';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ios_color_picker/show_ios_color_picker.dart';
import 'package:keyboard_emoji_picker/keyboard_emoji_picker.dart';
import 'package:liquid_glass_widgets/widgets/interactive/glass_button.dart';
import 'package:liquid_glass_widgets/widgets/surfaces/glass_app_bar.dart';

import '../../../core/themes/app_theme.dart';
import '../viewmodels/event_group_view_model.dart';

class AddEventGroupPage extends ConsumerWidget {
  const AddEventGroupPage({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(addEventGroupViewModelProvider);

    return CupertinoPageScaffold(
      navigationBar: GlassAppBar(
        padding: EdgeInsets.only(top: 10.sp, left: 10.sp, right: 10.sp),
        preferredSize: Size.fromHeight(44.sp),
        title: Text(
          '添加分组',
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
            onTap: () => _save(context, ref),
            width: 44.sp,
            height: 44.sp,
            iconSize: 20.sp,
            glowColor: CupertinoColors.activeBlue.resolveFrom(context),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 70.sp, left: 10.sp, right: 10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 图标
            _buildFieldItem(
              context: context,
              label: '图标',
              child: GestureDetector(
                onTap: () => _pickEmoji(context, ref),
                child: Container(
                  height: 44.sp,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        width: 32.sp,
                        height: 32.sp,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(borderRadius: context.radiusSM),
                          color: context.colorScheme.primary.withAlpha(40),
                        ),
                        child: state.icon != null && state.icon!.isNotEmpty
                            ? Text(state.icon!, style: TextStyle(fontSize: 18.sp))
                            : Icon(CupertinoIcons.plus, size: 16.sp, color: context.colorScheme.primary),
                      ),
                      SizedBox(width: 10.sp),
                      Text(
                        state.icon != null && state.icon!.isNotEmpty ? '已选择图标' : '点击选择图标',
                        style: TextStyle(fontSize: 14.sp, color: CupertinoColors.secondaryLabel.resolveFrom(context)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 名称
            _buildFieldItem(
              context: context,
              label: '名称',
              child: CupertinoTextField(
                onChanged: (value) => ref.read(addEventGroupViewModelProvider.notifier).updateTitle(value),
                placeholder: '请输入分组名称',
                padding: EdgeInsets.symmetric(vertical: 8.sp),
                style: TextStyle(fontSize: 14.sp, color: CupertinoColors.label.resolveFrom(context)),
              ),
            ),

            // 颜色主题
            _buildFieldItem(
              context: context,
              label: '颜色主题',
              child: GestureDetector(
                onTap: () => _pickColor(context, ref),
                child: Container(
                  height: 44.sp,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        width: 24.sp,
                        height: 24.sp,
                        decoration: ShapeDecoration(
                          shape: RoundedSuperellipseBorder(borderRadius: context.radiusSM),
                          color: state.selectedColor ?? context.colorScheme.onPrimaryContainer,
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Icon(
                        CupertinoIcons.chevron_right,
                        size: 16.sp,
                        color: CupertinoColors.secondaryLabel.resolveFrom(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 平台特定的 emoji 选择
  Future<void> _pickEmoji(BuildContext context, WidgetRef ref) async {
    if (Platform.isIOS) {
      final hasKeyboard = await KeyboardEmojiPicker().checkHasEmojiKeyboard();
      if (hasKeyboard) {
        final emoji = await KeyboardEmojiPicker().pickEmoji();
        if (emoji != null) {
          ref.read(addEventGroupViewModelProvider.notifier).updateIcon(emoji);
        }
      }
    } else {
      _showEmojiPickerSheet(context, ref);
    }
  }

  /// Android: 使用 EmojiPicker widget 的底部弹窗
  void _showEmojiPickerSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      builder: (sheetContext) {
        return SizedBox(
          height: 0.4.sh,
          child: EmojiPicker(
            onEmojiSelected: (category, emoji) {
              ref.read(addEventGroupViewModelProvider.notifier).updateIcon(emoji.emoji);
              Navigator.pop(sheetContext);
            },
            config: Config(
              height: 0.4.sh,
              checkPlatformCompatibility: true,
              emojiViewConfig: const EmojiViewConfig(emojiSizeMax: 28),
              viewOrderConfig: const ViewOrderConfig(
                top: EmojiPickerItem.categoryBar,
                middle: EmojiPickerItem.emojiView,
              ),
            ),
          ),
        );
      },
    );
  }

  /// iOS 风格颜色选择器
  void _pickColor(BuildContext context, WidgetRef ref) {
    final currentState = ref.read(addEventGroupViewModelProvider);
    final controller = IOSColorPickerController();
    controller.showIOSCustomColorPicker(
      context: context,
      startingColor: currentState.selectedColor ?? Colors.blue,
      onColorChanged: (color) {
        ref.read(addEventGroupViewModelProvider.notifier).updateColor(color);
      },
    );
  }

  /// 保存分组
  Future<void> _save(BuildContext context, WidgetRef ref) async {
    final success = await ref.read(addEventGroupViewModelProvider.notifier).save();
    if (success && context.mounted) {
      Navigator.of(context).pop();
    }
  }

  /// 构建单个列表项：小字灰色描述 + 下方输入框/控件
  Widget _buildFieldItem({required BuildContext context, required String label, required Widget child}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 8.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: context.secondaryLabelStyle),
          SizedBox(height: 6.sp),
          child,
        ],
      ),
    );
  }
}
