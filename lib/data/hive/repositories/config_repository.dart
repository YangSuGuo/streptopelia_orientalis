import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/hive/entities/app_config.dart';
import 'package:streptopelia_orientalis/data/hive/entities/user_preferences.dart';
import 'package:streptopelia_orientalis/data/hive/services/hive_config_service.dart';

part 'config_repository.g.dart';
part 'config_repository.freezed.dart';

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

  Future<void> _updateUserPreferencesWith(
      UserPreferences Function(UserPreferences current) updateFunction,
      ) async {
    final current = state.userPreferences;
    if (current != null) {
      final updated = updateFunction(current);
      await _updateUserPreferences(updated);
    }
  }

  Future<void> _updateAppConfig(AppConfig config) async {
    state = state.copyWith(isUpdating: true);
    try {
      await _hiveService.updateAppConfig(config);
      state = state.copyWith(
        appConfig: config,
        isUpdating: false,
      );
    } catch (e) {
      state = state.copyWith(isUpdating: false);
    }
  }

  Future<void> _updateUserPreferences(UserPreferences preferences) async {
    state = state.copyWith(isUpdating: true);
    try {
      await _hiveService.updateUserPreferences(preferences);
      state = state.copyWith(
        userPreferences: preferences,
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

  // UserPreferences 更新方法
  Future<void> updateEnableLocation(bool enable) async {
    await _updateUserPreferencesWith((current) => current.copyWith(enableLocation: enable));
  }

  Future<void> updateEnablePhotoVerification(bool enable) async {
    await _updateUserPreferencesWith((current) => current.copyWith(enablePhotoVerification: enable));
  }

  Future<void> updateWorkStartTime(String time) async {
    await _updateUserPreferencesWith((current) => current.copyWith(workStartTime: time));
  }

  Future<void> updateWorkEndTime(String time) async {
    await _updateUserPreferencesWith((current) => current.copyWith(workEndTime: time));
  }

  Future<void> updateBreakTime(String time) async {
    await _updateUserPreferencesWith((current) => current.copyWith(breakTime: time));
  }

  Future<void> updateCommuteTrackingEnabled(bool enable) async {
    await _updateUserPreferencesWith((current) => current.copyWith(commuteTrackingEnabled: enable));
  }

  Future<void> updatePrivacyMode(bool enable) async {
    await _updateUserPreferencesWith((current) => current.copyWith(privacyMode: enable));
  }

  Future<void> updateDefaultCategory(String? category) async {
    await _updateUserPreferencesWith((current) => current.copyWith(defaultCategory: category));
  }

  Future<void> updatePhotoQuality(int quality) async {
    await _updateUserPreferencesWith((current) => current.copyWith(photoQuality: quality));
  }

  Future<void> updateAttendanceRequirePhoto(bool require) async {
    await _updateUserPreferencesWith((current) => current.copyWith(attendanceRequirePhoto: require));
  }

  Future<void> updateWorkPhotoRequireLocation(bool require) async {
    await _updateUserPreferencesWith((current) => current.copyWith(workPhotoRequireLocation: require));
  }

  Future<void> updatePrivateLifeEnabled(bool enabled) async {
    await _updateUserPreferencesWith((current) => current.copyWith(privateLifeEnabled: enabled));
  }

  Future<void> updateProductionBatchEnabled(bool enabled) async {
    await _updateUserPreferencesWith((current) => current.copyWith(productionBatchEnabled: enabled));
  }

  Future<void> updateSalaryEnabled(bool enabled) async {
    await _updateUserPreferencesWith((current) => current.copyWith(salaryEnabled: enabled));
  }

  Future<void> updateIncomeExpenseEnabled(bool enabled) async {
    await _updateUserPreferencesWith((current) => current.copyWith(incomeExpenseEnabled: enabled));
  }

  Future<void> updateDiaryEnabled(bool enabled) async {
    await _updateUserPreferencesWith((current) => current.copyWith(diaryEnabled: enabled));
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

  // UserPreferences 获取方法
  bool getEnableLocation() {
    return state.userPreferences?.enableLocation ?? false;
  }

  bool getEnablePhotoVerification() {
    return state.userPreferences?.enablePhotoVerification ?? false;
  }

  String getWorkStartTime() {
    return state.userPreferences?.workStartTime ?? '09:00';
  }

  String getWorkEndTime() {
    return state.userPreferences?.workEndTime ?? '18:00';
  }

  String getBreakTime() {
    return state.userPreferences?.breakTime ?? '12:00-13:00';
  }

  bool getCommuteTrackingEnabled() {
    return state.userPreferences?.commuteTrackingEnabled ?? false;
  }

  bool getPrivacyMode() {
    return state.userPreferences?.privacyMode ?? false;
  }

  String? getDefaultCategory() {
    return state.userPreferences?.defaultCategory;
  }

  int getPhotoQuality() {
    return state.userPreferences?.photoQuality ?? 80;
  }

  bool getAttendanceRequirePhoto() {
    return state.userPreferences?.attendanceRequirePhoto ?? false;
  }

  bool getWorkPhotoRequireLocation() {
    return state.userPreferences?.workPhotoRequireLocation ?? false;
  }

  bool getPrivateLifeEnabled() {
    return state.userPreferences?.privateLifeEnabled ?? true;
  }

  bool getProductionBatchEnabled() {
    return state.userPreferences?.productionBatchEnabled ?? true;
  }

  bool getSalaryEnabled() {
    return state.userPreferences?.salaryEnabled ?? true;
  }

  bool getIncomeExpenseEnabled() {
    return state.userPreferences?.incomeExpenseEnabled ?? true;
  }

  bool getDiaryEnabled() {
    return state.userPreferences?.diaryEnabled ?? true;
  }
}