import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/hive/entities/app_config.dart';
import 'package:streptopelia_orientalis/data/hive/entities/user_preferences.dart';
import 'package:streptopelia_orientalis/data/hive/services/hive_config_service.dart';

part 'config_repository.freezed.dart';

part 'config_repository.g.dart';

@freezed
abstract class ConfigState with _$ConfigState {
  const factory ConfigState({
    @Default(false) bool isLoading,
    @Default(false) bool isUpdating,
    AppConfig? appConfig,
    UserPreferences? userPreferences,
  }) = _ConfigState;
}

@riverpod
class ConfigRepository extends _$ConfigRepository {
  @override
  ConfigState build() {
    final initialState = const ConfigState(isLoading: true);
    // 来延迟初始化
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initialize();
    });
    return initialState;
  }

  HiveConfigService get _hiveService => ref.read(hiveConfigServiceProvider);

  Future<void> _initialize() async {
    state = state.copyWith(isLoading: true);
    try {
      final appConfig = _hiveService.getAppConfig() ?? AppConfig();
      final userPreferences = _hiveService.getUserPreferences() ?? UserPreferences();

      state = state.copyWith(
        appConfig: appConfig,
        userPreferences: userPreferences,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        appConfig: AppConfig(),
        userPreferences: UserPreferences(),
        isLoading: false,
      );
    }
  }

  // 通用更新方法
  Future<void> _updateAppConfigWith(
      AppConfig Function(AppConfig current) updateFunction,
      ) async {
    final current = state.appConfig;
    if (current != null) {
      final updated = updateFunction(current);
      await _updateAppConfig(updated);
    }
  }

  Future<void> _updateAppConfig(AppConfig config) async {
    state = state.copyWith(isUpdating: true);
    try {
      await _hiveService.saveAppConfig(config);
      state = state.copyWith(
        appConfig: config,
        isUpdating: false,
      );
    } catch (e) {
      state = state.copyWith(isUpdating: false);
    }
  }

  // AppConfig 更新方法
  Future<void> updateThemeMode(String themeMode) async {
    await _updateAppConfigWith((current) => current.copyWith(themeMode: themeMode));
  }

  Future<void> updateLanguage(String language) async {
    await _updateAppConfigWith((current) => current.copyWith(language: language));
  }

  Future<void> updateEnableBiometric(bool enable) async {
    await _updateAppConfigWith((current) => current.copyWith(enableBiometric: enable));
  }

  Future<void> updateEnableNotifications(bool enable) async {
    await _updateAppConfigWith((current) => current.copyWith(enableNotifications: enable));
  }

  Future<void> updateAutoBackup(bool enable) async {
    await _updateAppConfigWith((current) => current.copyWith(autoBackup: enable));
  }

  Future<void> updateBackupPath(String? path) async {
    await _updateAppConfigWith((current) => current.copyWith(backupPath: path));
  }

  // AppConfig 获取方法
  String getThemeMode() {
    return state.appConfig?.themeMode ?? 'system';
  }

  String getLanguage() {
    return state.appConfig?.language ?? 'zh';
  }

  bool getEnableBiometric() {
    return state.appConfig?.enableBiometric ?? false;
  }

  bool getEnableNotifications() {
    return state.appConfig?.enableNotifications ?? true;
  }

  bool getAutoBackup() {
    return state.appConfig?.autoBackup ?? false;
  }

  String? getBackupPath() {
    return state.appConfig?.backupPath;
  }
}