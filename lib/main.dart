import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streptopelia_orientalis/application.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

void main() async {
  // 国际化初始化
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // 捕获 Flutter 异常
  FlutterError.onError = (FlutterErrorDetails details) => AppLogs().e('Flutter Error', error: details.exception, stackTrace: details.stack);

  runApp(ProviderScope(child: Application()));
}