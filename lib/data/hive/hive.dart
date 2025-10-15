import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initHive() async {
  if (!kIsWeb) {
    final Directory directory = await getTemporaryDirectory();
    /*    Hive
      ..init(directory.path)
      ..registerAdapters();   */
    Hive.init(directory.path);
  }
  await Hive.openBox<String>('prefs');
}
