import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  // Main colors
  static const Color mainBlue = Color(0xFF006FEE);

  // Primary colors
  static const Color primaryLightBlue = Color(0xFF49BEDF);
  static const Color primaryRed = Color(0xFFF31260);
  static const Color primaryCyan = Color(0xFF26C9FC);
  static const Color primaryPurple = Color(0xFF965DF8);
  static const Color primaryGreen = Color(0xFF43A047);
  static const Color primaryGreen2 = Color(0xFFD0ECE8);
  static const Color darkGreen = Color(0xFF007665);

  // Whites and off-whites
  static const Color white = Color(0xFFFFFFFF);
  static const Color offWhite1 = Color(0xFFFBFDF8);
  static const Color offWhite2 = Color(0xFFF5F6FA);
  static const Color offWhite3 = Color(0xFFE7E7E7);
  static const Color offWhite4 = Color(0xFFE3F1FF);
  static const Color offWhite5 = Color(0xFFF5FAFF);
  static const Color offWhite6 = Color(0xFFFFF8F4);
  static const Color offWhite7 = Color(0xFFEBF4FD);
  static const Color offWhite8 = Color(0xFFF2F0FF);

  static const LinearGradient kBackgroundColor = LinearGradient(
    colors: [offWhite6, offWhite7],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Dark grays and blacks
  static const Color black = Color(0xFF000000);
  static const Color black2 = Color(0xFF0E0E0E);
  static const Color gray = Color(0xFFCCCCCC);
  static const Color gray2 = Color(0xFFCAD1D7);
  static const Color gray3 = Color(0xFFE4E4E4);
  static const Color darkGray1 = Color(0xFF313131);
  static const Color darkGray2 = Color(0xFF767676);
  static const Color darkGray3 = Color(0xFF6E6E6E);
  static const Color darkGray4 = Color(0xFFA1A1A1);
  static const Color darkGray5 = Color(0xFF474C59);
  static const Color darkGray6 = Color(0xFFD6D6DC);
  static const Color darkGray7 = Color(0xFF0B1A2C);
  static const Color darkGray8 = Color(0xFFB1B1B1);
  static const Color darkGray9 = Color(0xFF383737);
  static const Color darkGray10 = Color(0xFFFAFAFA);
}
