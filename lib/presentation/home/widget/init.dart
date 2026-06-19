import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';
import 'package:streptopelia_orientalis/data/drift/service/database_service.dart';
import 'package:streptopelia_orientalis/di/drift_provider.dart';

class Init extends ConsumerStatefulWidget {
  const Init({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<Init> createState() => _InitState();
}

class _InitState extends ConsumerState<Init> {
  DateTime? lastPressedAt;
  late final database = ref.read(databaseProvider);
  late final databaseService = DatabaseService(database);

  @override
  void initState() {
    super.initState();
    databaseService.importAllData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _setSystemUI();
  }

  void _setSystemUI() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      AppTheme.isDarkMode(context)
          ? SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarColor: Colors.transparent,
            )
          : SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: Colors.transparent,
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (didPop) return;

        if (lastPressedAt == null || DateTime.now().difference(lastPressedAt!) > const Duration(seconds: 1)) {
          lastPressedAt = DateTime.now();
          SmartDialog.showToast(context.tr("click_again_to_exit"), debounce: true, useAnimation: true);
        } else {
          // 双击，退出应用
          // await FlutterSmartDialog.dismiss();
          SystemNavigator.pop(); // Android 退出
        }
      },
      child: widget.child,
    );
  }
}
