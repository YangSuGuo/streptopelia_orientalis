import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Setting extends ConsumerStatefulWidget {
  const Setting({super.key});

  @override
  ConsumerState createState() => _SettingState();
}

class _SettingState extends ConsumerState<Setting> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillViewport(
          delegate: SliverChildListDelegate([
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 500,
                  child: Center(child: Text('Setting')),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
