import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';

/// 条目编辑卡片组件
class EntryEditorCard extends StatelessWidget {
  final IconData icon;
  final String? emoji;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final VoidCallback? onLeadingTap;

  const EntryEditorCard({
    super.key,
    this.icon = CupertinoIcons.pencil,
    this.emoji,
    required this.titleController,
    required this.descriptionController,
    this.onLeadingTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: onLeadingTap,
            child: Container(
              width: 48,
              height: 48,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(8.0)),
              child: Container(
                decoration: ShapeDecoration(
                  color: context.colorScheme.primary.withAlpha(80),
                  shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: Center(child: _buildLeading()),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: .only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // 标题输入
                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      hintText: '请输入标题',
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
                  ),

                  const SizedBox(height: 8),

                  // 描述输入
                  TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      hintText: '请输入描述信息',
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                    maxLines: null,
                    minLines: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 构建左侧 Leading 区域（Icon 或 发光 Emoji）
  Widget _buildLeading() {
    if (emoji != null && emoji!.isNotEmpty) {
      return Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none, // 允许光晕溢出，防止被裁剪
        children: [
          // 底层：模糊发光效果
          Transform.scale(
            scale: 1.15,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Text(emoji!, style: TextStyle(fontSize: 24.0, color: Colors.white.withOpacity(0.6))),
            ),
          ),
          // 顶层：清晰的 Emoji
          Text(emoji!, style: const TextStyle(fontSize: 24.0)),
        ],
      );
    }

    // 默认渲染普通 Icon
    return Icon(icon, size: 24, color: Colors.grey.shade700);
  }
}
