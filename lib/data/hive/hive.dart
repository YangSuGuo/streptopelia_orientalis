import 'package:hive_ce_flutter/adapters.dart';
import 'package:streptopelia_orientalis/data/hive/entities/app_config.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import 'adapter/app_config_adapter.dart';
import 'adapter/home_projects_adapter.dart';
import 'entities/home_projects.dart';

class HiveConfig {
  static const String appConfigBox = 'app_config';
  static const String userPreferencesBox = 'user_preferences';
  static const String homeProjectsBox = 'home_projects';

  static Future init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(AppConfigAdapter());
    Hive.registerAdapter(HomeProjectsAdapter());

    await Hive.openBox<AppConfig>(appConfigBox);
    final homeProjectsBoxInstance = await Hive.openBox<HomeProjects>(homeProjectsBox);

    if (homeProjectsBoxInstance.isEmpty) {
      AppLogs().i('Home projects box is empty. Creating default values...');
      await homeProjectsBoxInstance.put(
        HiveConfig.homeProjectsBox,
        HomeProjects(showArchivedProjects: false, showHiddenProjects: false, sortByWeight: true, sortAscending: true),
      );
    }
  }
}