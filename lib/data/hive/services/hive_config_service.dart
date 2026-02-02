import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:streptopelia_orientalis/data/hive/entities/app_config.dart';
import 'package:streptopelia_orientalis/data/hive/entities/user_preferences.dart';
import 'package:streptopelia_orientalis/data/hive/hive.dart';

import '../entities/home_projects.dart';

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

  // UserPreferences
  Future<void> saveUserPreferences(UserPreferences preferences) async {
    final box = Hive.box<UserPreferences>(HiveConfig.userPreferencesBox);
    await box.put('user_preferences', preferences);
  }

  UserPreferences? getUserPreferences() {
    final box = Hive.box<UserPreferences>(HiveConfig.userPreferencesBox);
    return box.get('user_preferences');
  }

  // homeProjects
  Future<void> saveHomeProjects(HomeProjects homeProjects) async {
    final box = Hive.box<HomeProjects>(HiveConfig.homeProjectsBox);
    await box.put('home_projects', homeProjects);
  }

  HomeProjects? getHomeProjects() {
    final box = Hive.box<HomeProjects>(HiveConfig.homeProjectsBox);
    return box.get('home_projects');
  }

  // 获取 HomeProjects 的实时流
  Stream<BoxEvent> watchHomeProjectsChanges() {
    final box = Hive.box<HomeProjects>(HiveConfig.homeProjectsBox);
    return box.watch(key: 'home_projects');
  }
}