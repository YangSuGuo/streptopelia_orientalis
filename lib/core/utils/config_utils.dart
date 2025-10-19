import 'package:flutter/material.dart';

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
}
