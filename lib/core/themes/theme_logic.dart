import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/core/themes/theme_ui_model.dart';

part 'theme_logic.g.dart';

@riverpod
class ThemeLogic extends _$ThemeLogic {
  @override
  ThemeUiModel build() {
    ThemeMode themeMode = ThemeMode.system;
    final Box<String> prefsBox = Hive.box<String>('prefs');
    final String mode = prefsBox.get('themeMode',
        defaultValue: ThemeMode.system.toString()) as String;
    switch (mode) {
      case 'ThemeMode.dark':
        themeMode = ThemeMode.dark;
      case 'ThemeMode.light':
        themeMode = ThemeMode.light;
      case 'ThemeMode.system':
        themeMode = ThemeMode.system;
    }
    return ThemeUiModel(themeMode: themeMode);
  }

  void setThemeMode(ThemeMode mode) {
    Hive.box<String>('prefs').put('themeMode', mode.toString());
    state = state.copyWith(themeMode: mode);
  }

  void toggleTheme() {
    if (state.themeMode == ThemeMode.dark) {
      setThemeMode(ThemeMode.light);
    } else {
      setThemeMode(ThemeMode.dark);
    }
  }
}
