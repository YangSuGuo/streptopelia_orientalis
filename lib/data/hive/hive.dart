import 'package:hive_flutter/adapters.dart';
import 'package:streptopelia_orientalis/data/hive/entities/app_config.dart';
import 'package:streptopelia_orientalis/data/hive/entities/user_preferences.dart';

class HiveConfig {
  static const String appConfigBox = 'app_config';
  static const String userPreferencesBox = 'user_preferences';

  static Future<void> init() async {
    await Hive.initFlutter();

    // 打开盒子
    await Hive.openBox<AppConfig>(appConfigBox);
    await Hive.openBox<UserPreferences>(userPreferencesBox);
  }
}