import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_glass_widgets/liquid_glass_setup.dart';
import 'package:streptopelia_orientalis/application.dart';
import 'package:streptopelia_orientalis/data/drift/app_database.dart';
import 'package:streptopelia_orientalis/data/hive/hive.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

void main() async {
  // 国际化初始化
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // 初始化数据库
  await HiveConfig.init();
  final database = AppDatabase();

  // glass 样式初始化
  await LiquidGlassWidgets.initialize();

  // 捕获 Flutter 异常
  FlutterError.onError = (FlutterErrorDetails details) =>
      AppLogs().e('Flutter Error', error: details.exception, stackTrace: details.stack);

  runApp(
    ProviderScope(
      overrides: [databaseProvider.overrideWithValue(database)],
      observers: [RiverpodLogger()],
      child: Application(),
    ),
  );
}
