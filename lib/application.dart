import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';
import 'package:streptopelia_orientalis/presentation/routes/app_routes.dart';

class Application extends ConsumerWidget {
  Application({super.key});

  late ColorScheme lightColorScheme;
  late ColorScheme darkColorScheme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 国际化
    return EasyLocalization(
      saveLocale: true,
      useOnlyLangCode: true,
      useFallbackTranslations: true,
      path: 'assets/translations',
      fallbackLocale: Locale('zh', 'CN'),
      supportedLocales: const [Locale('en', 'US'), Locale('zh', 'CN')],
      // 动态取色
      child: DynamicColorBuilder(
        builder: ((ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
          lightColorScheme = lightDynamic?.harmonized() ?? AppTheme.defaultLightColorScheme;
          darkColorScheme = darkDynamic?.harmonized() ?? AppTheme.defaultLightColorScheme;
          // 屏幕适配
          return ScreenUtilInit(
            designSize: const Size(350, 667),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              final router = ref.watch(goRouterProvider);
              return MaterialApp.router(
                title: "Streptopelia_orientalis".tr(),
                // 国际化
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                // 主题
                themeMode: ThemeMode.system,
                // todo 持久化存储并更新
                theme: AppTheme.themeUtils(lightColorScheme),
                darkTheme: AppTheme.themeUtils(darkColorScheme),
                // 路由
                routerConfig: router,
                builder: FlutterSmartDialog.init(),
                debugShowCheckedModeBanner: false,
              );
            },
          );
        }),
      ),
    );
  }
}
