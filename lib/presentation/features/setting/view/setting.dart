import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Setting extends ConsumerStatefulWidget {
  const Setting({super.key});

  @override
  ConsumerState createState() => _SettingState();
}

class _SettingState extends ConsumerState<Setting> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("设置",style: TextStyle(fontSize: 25.h)),
    );
  }
}
