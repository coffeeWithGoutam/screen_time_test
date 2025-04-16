import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/styles.dart';

class CustomTextInputField extends StatelessWidget {
  final String? labelText, placeHolderText;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final TextInputType textInputType;
  final Function(String?)? onChanged;
  final Function? toggleHandler;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? textInputFormatter;
  final double? maxWidth;
  final bool obSecureText;
  final int maxLines;
  final Color? fillColor;

  const CustomTextInputField({
    super.key,
    this.labelText,
    this.placeHolderText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.onChanged,
    this.toggleHandler,
    this.validator,
    this.textInputFormatter,
    this.maxWidth,
    this.obSecureText = false,
    this.maxLines = 1,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: AppColors.mainBlue,
      obscureText: obSecureText,
      onChanged: onChanged,
      validator: validator,
      inputFormatters: textInputFormatter,
      keyboardType: textInputType,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? AppColors.white,
        hintText: placeHolderText,
        constraints: BoxConstraints(maxWidth: maxWidth ?? double.infinity),
        prefixIcon: Icon(prefixIcon, color: AppColors.darkGray3),
        suffixIcon:
            suffixIcon != null
                ? IconButton(
                  onPressed: () {
                    if (toggleHandler != null) {
                      toggleHandler!();
                    }
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(suffixIcon, color: AppColors.darkGray3),
                  ),
                )
                : null,
        label:
            labelText != null
                ? Text(labelText!, style: AppStyles.kInputLabelStyle)
                : null,
        floatingLabelStyle: const TextStyle(color: AppColors.mainBlue),
        enabledBorder: AppStyles.kInputBorderStyle,
        enabled: true,
        border: AppStyles.kInputBorderStyle,
        focusedBorder: AppStyles.kInputFocusBorderStyle,
      ),
    );
  }
}
