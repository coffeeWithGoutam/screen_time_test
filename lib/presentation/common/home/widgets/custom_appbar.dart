import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final double expandedHeight;
  final List<Widget> children;
  const CustomAppBar({
    super.key,
    required this.scaffoldKey,
    required this.expandedHeight,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: expandedHeight,
      backgroundColor: AppColors.mainBlue,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        background: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Column(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [...children],
            ),
          ),
        ),
      ),
    );
  }
}
