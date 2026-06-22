import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 📏 应用设计系统常量与组件样式
class AppConstants {
  AppConstants._();

  //  边距
  static double get spacingXS => 4.w;

  static double get spacingSM => 8.w;

  static double get spacingMD => 16.w;

  static double get spacingLG => 24.w;

  static double get spacingXL => 32.w;

  //  圆角
  static double get radiusSM => 8.w;

  static double get radiusMD => 12.w;

  static double get radiusLG => 16.w;

  static double get radiusFull => 9999.w;

  //  组件样式

  /// 卡片主题样式示例
  static CardThemeData cardTheme(ColorScheme colorScheme) => CardThemeData(
    elevation: 2,
    margin: EdgeInsets.all(spacingSM),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radiusMD),
      side: BorderSide(color: colorScheme.outlineVariant, width: 1),
    ),
    color: colorScheme.surfaceContainerLow,
  );

  /// 填充按钮主题样式示例
  static FilledButtonThemeData filledButtonTheme(ColorScheme colorScheme) => FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: spacingLG, vertical: spacingMD),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radiusFull)),
      // backgroundColor: colorScheme.primaryContainer, // 可根据需要自定义
    ),
  );
}
