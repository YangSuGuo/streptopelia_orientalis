import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:streptopelia_orientalis/core/themes/app_theme.dart';

import '../../../di/drift_provider.dart';

class Setting extends ConsumerStatefulWidget {
  const Setting({super.key});

  @override
  ConsumerState createState() => _SettingState();
}

class _SettingState extends ConsumerState<Setting> {
  late final db = ref.watch(databaseProvider);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillViewport(
          delegate: SliverChildListDelegate([
            Column(
              children: [
                Padding(
                  padding: .only(top: 30, bottom: 20),
                  child: Text('Setting', style: context.textTheme.headlineMedium),
                ),
                MaterialButton(
                  minWidth: 120.sp,
                  height: 45.sp,
                  color: context.colorScheme.primary,
                  elevation: 0.5,
                  padding: .symmetric(horizontal: 8.0, vertical: 4.0),
                  shape: RoundedSuperellipseBorder(borderRadius: context.radiusLG),
                  textTheme: .accent,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => DriftDbViewer(db)));
                  },
                  child: Text("drift 数据库查看", style: TextStyle(color: context.colorScheme.surface)),
                ),
                /* Padding(
                  padding: .only(top: 20),
                  child: MaterialButton(
                    minWidth: 120.sp,
                    height: 45.sp,
                    color: context.colorScheme.primary,
                    elevation: 0.5,
                    padding: .symmetric(horizontal: 8.0, vertical: 4.0),
                    shape: RoundedSuperellipseBorder(borderRadius: context.radiusLG),
                    textTheme: .accent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HiveBoxesView(
                            hiveBoxes: [
                              HiveConfig.appConfigBox,
                              HiveConfig.userPreferencesBox,
                              HiveConfig.homeProjectsBox,
                            ],
                            onError: (String errorMessage) => {debugPrint(errorMessage)},
                          ),
                        ),
                      );
                    },
                    child: Text("hive 数据库查看", style: TextStyle(color: context.colorScheme.surface)),
                  ),
                ),*/
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
