import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:streptopelia_orientalis/data/hive/entities/app_config.dart';
import 'package:streptopelia_orientalis/data/hive/entities/user_preferences.dart';
import 'package:streptopelia_orientalis/data/hive/hive.dart';

final hiveConfigServiceProvider = Provider((ref) => HiveConfigService());

class HiveConfigService {
  // AppConfig
  Future<void> saveAppConfig(AppConfig config) async {
    final box = Hive.box<AppConfig>(HiveConfig.appConfigBox);
    await box.put('app_config', config);
  }

  AppConfig? getAppConfig() {
    final box = Hive.box<AppConfig>(HiveConfig.appConfigBox);
    return box.get('app_config');
  }

  Future<void> updateAppConfig(AppConfig config) async {
    final box = Hive.box<AppConfig>(HiveConfig.appConfigBox);
    await box.put('app_config', config);
  }

  // UserPreferences
  Future<void> saveUserPreferences(UserPreferences preferences) async {
    final box = Hive.box<UserPreferences>(HiveConfig.userPreferencesBox);
    await box.put('user_preferences', preferences);
  }

  UserPreferences? getUserPreferences() {
    final box = Hive.box<UserPreferences>(HiveConfig.userPreferencesBox);
    return box.get('user_preferences');
  }

  Future<void> updateUserPreferences(UserPreferences preferences) async {
    final box = Hive.box<UserPreferences>(HiveConfig.userPreferencesBox);
    await box.put('user_preferences', preferences);
  }
}