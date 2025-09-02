import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:streptopelia_orientalis/pages/home/init.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    return Init(
      child: Scaffold(
        body: Center(
          child: Text(context.tr("hi"), style: TextStyle(fontSize: 25.h)),
        ),
      ),
    );
  }
}
