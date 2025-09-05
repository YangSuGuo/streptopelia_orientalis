import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
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
          child: Text(context.tr("hello"), style: TextStyle(fontSize: 25.h)),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
      ),
    );
  }

  // MD3 底部导航栏
  Widget _buildBottomNavigationBar(BuildContext context) {
    return SalomonBottomBar(
      items: [
        /// Home
        SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home"), selectedColor: Colors.purple),

        /// Likes
        SalomonBottomBarItem(icon: Icon(Icons.favorite_border), title: Text("Likes"), selectedColor: Colors.pink),

        /// Search
        SalomonBottomBarItem(icon: Icon(Icons.search), title: Text("Search"), selectedColor: Colors.orange),

        /// Profile
        SalomonBottomBarItem(icon: Icon(Icons.person), title: Text("Profile"), selectedColor: Colors.teal),
      ],
    );
  }
}
