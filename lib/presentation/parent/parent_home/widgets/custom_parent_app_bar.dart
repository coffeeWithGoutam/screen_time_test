import 'package:flutter/material.dart';
import 'package:screen_time_test/core/utils/responsive.dart';

import '../../../common/home/widgets/custom_appbar.dart';
import '../../../parent/parent_home/widgets/custom_header.dart';
import '../../../parent/parent_home/widgets/children_dropdown.dart';

class CustomParentAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomParentAppBar({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      scaffoldKey: scaffoldKey,
      expandedHeight: context.rh(),
      children: [
        CustomHeader(homeKey: scaffoldKey),
        SizedBox(height: context.setRh(0.02)),
        ChildrenDropdown(),
      ],
    );
  }
}
