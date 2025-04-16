import 'package:flutter/material.dart';
import 'package:screen_time_test/presentation/common/home/widgets/custom_row.dart';

import '../../../../core/utils/ui_utils.dart';

class CustomDrawerItem extends StatelessWidget {
  final String? path;
  final IconData? icon;
  final String text;
  final void Function() onPressed;
  final TextStyle? textStyle;
  const CustomDrawerItem({
    super.key,
    this.icon,
    required this.text,
    this.path,
    this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: GestureDetector(
        onTap: onPressed,
        child: CustomRow(
          children: [
            path != null
                ? UiUtils.getPng(path!, height: 40, width: 40)
                : Icon(icon, size: 25),
            const SizedBox(width: 10),
            Text(
              text,
              style:
                  textStyle ??
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
