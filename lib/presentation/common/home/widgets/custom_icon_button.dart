import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';

class CustomIconButton extends StatelessWidget {
  final Widget? iconData;
  final IconData? icon;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final void Function() onPressed;
  const CustomIconButton({
    super.key,
    this.iconData,
    required this.onPressed,
    this.icon,
    this.backgroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: ButtonStyle(
        padding: padding != null ? WidgetStatePropertyAll(padding) : null,
        backgroundColor:
            backgroundColor != null
                ? WidgetStatePropertyAll<Color>(backgroundColor!)
                : WidgetStatePropertyAll<Color>(Color(0xFF49BEDF)),
      ),
      onPressed: () => onPressed(),
      icon: iconData ?? Icon(icon, size: 20, color: AppColors.white),
    );
  }
}
