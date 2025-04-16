import 'package:flutter/material.dart';

import 'colors.dart';

class AppStyles {
  static const TextStyle kSplashTitleStyle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black);

  static const TextStyle kSplashDescriptionStyle = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.black);

  static TextStyle kButtonStyle({Color? textColor}) {
    return TextStyle(
        color: textColor ?? AppColors.white, fontWeight: FontWeight.w700, fontSize: 16);
  }

  static const TextStyle kSelectGenderStyle =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 15);

  static const TextStyle kInputLabelStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  static const TextStyle kForgetPasswordStyle = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.black);

  static const TextStyle kRichTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: AppColors.darkGray5,
  );

  static const TextStyle kDividerTextStyle = TextStyle(
      color: AppColors.darkGray2, fontSize: 16, fontWeight: FontWeight.w500);

  static const TextStyle kVerificationTextStyle = TextStyle(
      color: AppColors.black, fontSize: 20, fontWeight: FontWeight.w600);

  static const TextStyle kButtonTextStyle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.mainBlue);

  static const TextStyle kAppBarTextStyle = TextStyle(
      fontSize: 12, color: AppColors.white, fontWeight: FontWeight.w600);

  static OutlineInputBorder kInputBorderStyle = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.gray2, width: 1),
    borderRadius: BorderRadius.circular(10),
  );

  static OutlineInputBorder kInputFocusBorderStyle = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColors.mainBlue, width: 1),
    borderRadius: BorderRadius.circular(10),
  );
}
