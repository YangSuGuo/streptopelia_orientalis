import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Summary extends ConsumerStatefulWidget {
  const Summary({super.key});

  @override
  ConsumerState createState() => _SummaryState();
}

class _SummaryState extends ConsumerState<Summary> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.tr("summary"), style: TextStyle(fontSize: 25.h)),
    );
  }
}
