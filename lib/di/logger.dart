import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class AppLogs extends Logger {
  AppLogs._internal() : super();
  static final AppLogs _instance = AppLogs._internal();

  factory AppLogs() {
    return _instance;
  }

  @override
  void log(Level level, dynamic message, {Object? error, StackTrace? stackTrace, DateTime? time}) async {
    if (level == Level.error) {
      String dir = (await getApplicationSupportDirectory()).path;
      final String logDir = p.join(dir, "logs");
      final String filename = p.join(logDir, "logs.log");

      final directory = Directory(logDir);
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      await File(
        filename,
      ).writeAsString("**${DateTime.now()}** \n $message \n $stackTrace", mode: FileMode.writeOnlyAppend);
    }
    super.log(level, "$message", error: error, stackTrace: level == Level.error ? stackTrace : null);
  }
}

base class RiverpodLogger extends ProviderObserver {
  final AppLogs _appLogger = AppLogs();

  @override
  void didUpdateProvider(ProviderObserverContext context, Object? previousValue, Object? newValue) {
    final logMessage =
        '''
{
  "类型": "状态更新",
  "标识": "${context.provider}",
  "更新前": "$previousValue",
  "更新后": "$newValue",
  "来源": "${context.mutation}"
}''';

    _appLogger.i(logMessage);
  }
}

Future<File> getLogsPath() async {
  String dir = (await getApplicationSupportDirectory()).path;
  final String logDir = p.join(dir, "logs");
  final String filename = p.join(logDir, "logs.log");

  final directory = Directory(logDir);
  if (!await directory.exists()) {
    await directory.create(recursive: true);
  }

  final file = File(filename);
  if (!await file.exists()) {
    await file.create();
  }
  return file;
}

Future<bool> clearLogs() async {
  String dir = (await getApplicationSupportDirectory()).path;
  final String logDir = p.join(dir, "logs");
  final String filename = p.join(logDir, "logs.log");

  final directory = Directory(logDir);
  if (!await directory.exists()) {
    await directory.create(recursive: true);
  }

  final file = File(filename);
  try {
    await file.writeAsString('');
  } catch (e) {
    debugPrint('Error clearing file: $e');
    return false;
  }
  return true;
}
