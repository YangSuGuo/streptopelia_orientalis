import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streptopelia_orientalis/data/hive/entities/home_projects.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import '../services/hive_config_service.dart';

part 'home_projects_providers.g.dart';

@riverpod
Stream<HomeProjects> homeProjectsStream(Ref ref) {
  final service = ref.watch(hiveConfigServiceProvider);

  return service.watchHomeProjectsChanges().asyncMap((event) {
    HomeProjects? settings = service.getHomeProjects();
    if (settings == null) {
      final defaultSettings = HomeProjects()
        ..showHiddenProjects = false
        ..showArchivedProjects = false
        ..sortByWeight = false
        ..sortAscending = true;

      service.saveHomeProjects(defaultSettings);
      return defaultSettings;
    }
    AppLogs().i('Home projects Hive box: ${settings.toString()}');
    return settings;
  });
}
