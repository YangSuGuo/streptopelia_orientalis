import 'package:dynamic_color/dynamic_color.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';
import 'package:streptopelia_orientalis/core/utils/config_utils.dart';
import 'package:streptopelia_orientalis/data/hive/repositories/config_repository.dart';
import 'package:streptopelia_orientalis/presentation/routes/app_routes.dart';

class Application extends ConsumerWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 在build方法中初始化配置
    final config = ref.watch(configRepositoryProvider);

    final themeMode = ConfigUtils.themeMode(config.appConfig?.themeMode ?? 'system');
    final locale = ConfigUtils.locale(config.appConfig?.language ?? 'zh');
    final translations = 'assets/translations';

    // 国际化
    return EasyLocalization(
      saveLocale: false,
      useOnlyLangCode: true,
      useFallbackTranslations: true,
      path: translations,
      fallbackLocale: locale,
      supportedLocales: const [Locale('en', 'US'), Locale('zh', 'CN')],
      // 动态取色
      child: DynamicColorBuilder(
        builder: ((ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
          final lightColorScheme = lightDynamic?.harmonized() ?? AppTheme.defaultLightColorScheme;
          final darkColorScheme = darkDynamic?.harmonized() ?? AppTheme.defaultLightColorScheme;
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
                themeMode: themeMode,
                theme: AppTheme.themeUtils(lightColorScheme),
                darkTheme: AppTheme.themeUtils(darkColorScheme),
                // 路由
                // routerConfig: router,
                routeInformationProvider: router.routeInformationProvider,
                routeInformationParser: router.routeInformationParser,
                routerDelegate: router.routerDelegate,
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
