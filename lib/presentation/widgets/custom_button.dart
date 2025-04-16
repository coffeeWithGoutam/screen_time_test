import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/styles.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double width;
  final Color? backgroundColor, textColor;
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.width = double.infinity,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll<EdgeInsets>(EdgeInsets.all(12.0)),
        backgroundColor: WidgetStatePropertyAll<Color>(
          backgroundColor ?? AppColors.mainBlue,
        ),
        minimumSize: WidgetStatePropertyAll<Size>(Size(width, 0.0)),
        side: const WidgetStatePropertyAll<BorderSide>(BorderSide.none),
      ),
      onPressed: () => onPressed(),
      child: Text(
        buttonText,
        style: AppStyles.kButtonStyle(textColor: textColor),
      ),
    );
  }
}
