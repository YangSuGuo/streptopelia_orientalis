import 'package:flutter/material.dart';

import 'app_constants.dart';
import 'custom_colors.dart';

class AppTheme {
  AppTheme._();

  // 默认颜色方案
  static const _seedColor = Color(0xFF1772b4);

  static ColorScheme get defaultLightColorScheme =>
      ColorScheme.fromSeed(seedColor: _seedColor, brightness: Brightness.light);

  static ColorScheme get defaultDarkColorScheme =>
      ColorScheme.fromSeed(seedColor: _seedColor, brightness: Brightness.dark);

  // 自定义颜色 (适应夜间模式)
  static const lightCustomColors = CustomColors(brandAccent: Color(0xFFFF9800));
  static const darkCustomColors = CustomColors(brandAccent: Color(0xFFFFB74D));

  // 主题构建器
  static ThemeData _buildTheme(ColorScheme colorScheme, CustomColors customColors) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      brightness: colorScheme.brightness,
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      extensions: [customColors],
      // cardTheme: AppConstants.cardTheme(colorScheme),
      // filledButtonTheme: AppConstants.filledButtonTheme(colorScheme),
    );
  }

  /// 根据动态 ColorScheme 构建主题
  static ThemeData themeUtils(ColorScheme colorScheme) {
    final isDark = colorScheme.brightness == Brightness.dark;
    final customColors = isDark ? darkCustomColors : lightCustomColors;
    return _buildTheme(colorScheme, customColors);
  }

  /// 是否深色模式
  static bool isDarkMode(BuildContext context) {
    // return View.of(context).platformDispatcher.platformBrightness == Brightness.dark; // 手机系统主题
    return Theme.of(context).brightness == Brightness.dark; // app应用主题
  }
}

/// 主题与上下文便捷扩展
extension ThemeExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;

  /// 获取自定义颜色 (例如: context.customColors.brandAccent)
  CustomColors get customColors => theme.extension<CustomColors>()!;

  bool get isDarkMode => theme.brightness == Brightness.dark;
}

/// 边距便捷扩展
extension SpacingExtensions on BuildContext {
  EdgeInsets get paddingXS => EdgeInsets.all(AppConstants.spacingXS);

  EdgeInsets get paddingSM => EdgeInsets.all(AppConstants.spacingSM);

  EdgeInsets get paddingMD => EdgeInsets.all(AppConstants.spacingMD);

  EdgeInsets get paddingLG => EdgeInsets.all(AppConstants.spacingLG);

  Widget get gapMD => SizedBox(width: AppConstants.spacingMD, height: AppConstants.spacingMD);
}

/// 圆角便捷扩展
extension RadiusExtensions on BuildContext {
  BorderRadius get radiusMD => BorderRadius.circular(AppConstants.radiusMD);

  BorderRadius get radiusFull => BorderRadius.circular(AppConstants.radiusFull);
}
