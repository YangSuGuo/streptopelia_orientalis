import 'package:hive_flutter/adapters.dart';
import 'package:streptopelia_orientalis/data/hive/entities/app_config.dart';
import 'package:streptopelia_orientalis/data/hive/entities/user_preferences.dart';

import 'entities/home_projects.dart';

class HiveConfig {
  static const String appConfigBox = 'app_config';
  static const String userPreferencesBox = 'user_preferences';
  static const String homeProjectsBox = 'home_projects';

  static Future<void> init() async {
    await Hive.initFlutter();

    // 打开盒子
    await Hive.openBox<AppConfig>(appConfigBox);
    await Hive.openBox<UserPreferences>(userPreferencesBox);
    await Hive.openBox<HomeProjects>(homeProjectsBox);
  }
}