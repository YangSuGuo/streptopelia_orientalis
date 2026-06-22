import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../providers/app_config_providers.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    String? appName,
    String? appVersion,
    int? databaseVersion,
    String? themeMode,
    String? language,
    bool? enableBiometric,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) => _$AppConfigFromJson(json);
}