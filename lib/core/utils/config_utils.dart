import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/widgets/shared/glass_page.dart';

class ConfigUtils {
  /// 当前语言
  ///
  /// [languageCode] en：英文 zh：中文
  static Locale locale(String languageCode) => switch (languageCode) {
    'en' => const Locale('en', 'US'),
    _ => const Locale('zh', 'CN'),
  };

  /// 当前主题模式
  ///
  /// [mode] system(默认)：跟随系统 light：普通 dark：深色
  static ThemeMode themeMode(String mode) => switch (mode) {
    'system' => ThemeMode.system,
    'dark' => ThemeMode.dark,
    'light' => ThemeMode.light,
    _ => ThemeMode.system,
  };

  /// 当前底部栏主题模式
  ///
  /// [mode] system(默认)：跟随系统 light：普通 dark：深色
  static GlassStatusBarStyle liquidGlassTheme(String mode) => switch (mode) {
    'system' => GlassStatusBarStyle.auto,
    'dark' => GlassStatusBarStyle.dark,
    'light' => GlassStatusBarStyle.light,
    _ => GlassStatusBarStyle.auto,
  };
}
