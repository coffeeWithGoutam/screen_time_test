import 'package:flutter/material.dart';
import 'package:screen_time_test/core/utils/responsive.dart';

import '../../common/home/widgets/custom_row.dart';
import '../../common/home/widgets/custom_appbar.dart';
import '../../common/home/widgets/custom_icon_button.dart';

class CustomChildAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomChildAppBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      scaffoldKey: scaffoldKey,
      expandedHeight: context.rh(),
      children: [
        Align(
          alignment: Alignment.topRight,
          child: CustomIconButton(
            icon: Icons.more_vert,
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        CustomRow(
          spacing: 5,
          children: [
            Icon(Icons.lock_open_rounded, color: Colors.white),
            Text("Iphone 11 Pro", style: TextStyle(color: Colors.white)),
          ],
        ),
      ],
    );
  }
}
