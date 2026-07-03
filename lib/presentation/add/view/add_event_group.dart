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
import '../../../core/widgets/card/color_container.dart';
import '../viewmodels/event_group_view_model.dart';
import '../widget/entry_editor_card.dart';

class AddEventGroupPage extends ConsumerStatefulWidget {
  const AddEventGroupPage({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  ConsumerState<AddEventGroupPage> createState() => _AddEventGroupPageState();
}

class _AddEventGroupPageState extends ConsumerState<AddEventGroupPage> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final IOSColorPickerController _colorPickerController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _descriptionController = TextEditingController();
    _colorPickerController = IOSColorPickerController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _colorPickerController.dispose();
    super.dispose();
  }

  /// 平台特定的 emoji 选择
  Future<void> _pickEmoji() async {
    if (Platform.isIOS) {
      final hasKeyboard = await KeyboardEmojiPicker().checkHasEmojiKeyboard();
      if (hasKeyboard) {
        final emoji = await KeyboardEmojiPicker().pickEmoji();
        if (emoji != null) {
          ref.read(addEventGroupViewModelProvider.notifier).updateIcon(emoji);
        }
      }
    } else {
      _showEmojiPickerSheet();
    }
  }

  /// Android: 使用 EmojiPicker widget 的底部弹窗
  void _showEmojiPickerSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 0.4.sh,
          child: EmojiPicker(
            onEmojiSelected: (category, emoji) {
              ref.read(addEventGroupViewModelProvider.notifier).updateIcon(emoji.emoji);
              Navigator.pop(context);
            },
            config: Config(
              height: 0.4.sh,
              checkPlatformCompatibility: true,
              emojiViewConfig: const EmojiViewConfig(emojiSizeMax: 28),
              viewOrderConfig: const ViewOrderConfig(
                top: EmojiPickerItem.categoryBar,
                middle: EmojiPickerItem.emojiView,
                // bottom: EmojiPickerItem.searchBar,
              ),
            ),
          ),
        );
      },
    );
  }

  /// iOS 风格颜色选择器
  void _pickColor() {
    final currentState = ref.read(addEventGroupViewModelProvider);
    _colorPickerController.showIOSCustomColorPicker(
      context: context,
      startingColor: currentState.selectedColor ?? Colors.blue,
      onColorChanged: (color) {
        ref.read(addEventGroupViewModelProvider.notifier).updateColor(color);
      },
    );
  }

  /// 保存分组
  Future<void> _save() async {
    ref.read(addEventGroupViewModelProvider.notifier).updateTitle(_titleController.text);
    final success = await ref.read(addEventGroupViewModelProvider.notifier).save();
    if (success && mounted) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(addEventGroupViewModelProvider);

    final glassStyle = ColorContainerStyle(
      type: ColorContainerType.glassmorphism,
      borderRadius: 16.sp,
      colors: [context.colorScheme.surfaceContainerHighest, context.colorScheme.surfaceContainer],
    );

    final noHeaderConfig = const HeaderConfig(showHeader: false);
    final cardPadding = EdgeInsets.only(bottom: 16.sp);

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
            onTap: () {
              if (!state.isSubmitting) _save();
            },
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
          controller: widget.scrollController,
          primary: false,
          slivers: [
            // 1. 分组信息
            SliverToBoxAdapter(
              child: ColorContainer(
                title: '分组信息',
                outerPadding: cardPadding,
                style: glassStyle,
                headerConfig: noHeaderConfig,
                children: [
                  EntryEditorCard(
                    emoji: state.icon,
                    titleController: _titleController,
                    descriptionController: _descriptionController,
                    onLeadingTap: _pickEmoji,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: context.colorScheme.outlineVariant,
                    indent: 16.sp,
                    endIndent: 8.sp,
                  ),
                  CupertinoListTile(
                    title: Text("颜色主题", style: context.textTheme.titleSmall),
                    leading: Container(
                      width: 24.sp,
                      height: 24.sp,
                      decoration: ShapeDecoration(
                        shape: RoundedSuperellipseBorder(borderRadius: context.radiusSM),
                        color: state.selectedColor ?? context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    leadingToTitle: 8.sp,
                    trailing: Icon(
                      CupertinoIcons.chevron_right,
                      size: 18.sp,
                      color: context.colorScheme.onPrimaryContainer,
                    ),
                    onTap: _pickColor,
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
