import 'package:flutter/material.dart';
import 'package:screen_time_test/presentation/child/widgets/custom_child_app_bar.dart';

import '../common/home/widgets/custom_drawer.dart';

class ChildHomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  ChildHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawer(),
      body: CustomScrollView(
        slivers: [CustomChildAppBar(scaffoldKey: _scaffoldKey)],
      ),
    );
  }
}
