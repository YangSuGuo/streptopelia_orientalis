import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/app_config.dart';
import '../hive.dart';
import '../services/app_config_service.dart';

part 'app_config_providers.g.dart';

@riverpod
class AppConfigProvider extends _$AppConfigProvider {
  static const String _key = 'app_config';

  @override
  Future<AppConfig> build() async {
    final service = ref.watch(appConfigServiceProvider);
    await service.init(HiveConfig.appConfigBox);
    final config = service.get(_key);
    return config ?? const AppConfig();
  }

  Future<void> updateConfig(AppConfig config) async {
    final service = ref.read(appConfigServiceProvider);
    await service.put(_key, config);
    state = AsyncValue.data(config);
  }
}
