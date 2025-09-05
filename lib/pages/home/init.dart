import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streptopelia_orientalis/helper/logger.dart';
import 'package:streptopelia_orientalis/themes/app_theme.dart';

class Init extends ConsumerStatefulWidget {
  const Init({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<Init> createState() => _InitState();
}

class _InitState extends ConsumerState<Init> {
  DateTime? lastPressedAt;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AppLogs().i("App started");
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
          SmartDialog.showToast(context.tr("Click_again_to_exit"), debounce: true);
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
