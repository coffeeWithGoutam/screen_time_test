import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../constants/colors.dart';

class UiUtils {
  UiUtils._();

  // create a Custom Image Method
  static Image getPng(
    String path, {
    BoxFit? fit,
    double? width,
    double? height,
    Color? color,
  }) {
    return Image.asset(
      color: color,
      path,
      fit: fit ?? BoxFit.contain,
      width: width,
      height: height,
    );
  }

  // create a Custom AppBar
  static Widget kAppBar(
    BuildContext context, {
    Text? text,
    bool centerTitle = false,
    Function? onTap,
  }) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () => (onTap != null) ? onTap() : context.pop(),
            child: const Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        if (centerTitle)
          Center(child: text ?? const SizedBox())
        else
          Padding(
            padding: const EdgeInsets.only(left: 35.0),
            child: text ?? const SizedBox(),
          ),
      ],
    );
  }

  // create a toast of success message using flutter toast
  static showSuccessMessage({required String msg}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: AppColors.primaryGreen,
      textColor: AppColors.white,
      fontSize: 16.0,
    );
  }

  // create a toast of Error message using flutter toast
  static showErrorMessage({required String msg}) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      backgroundColor: AppColors.primaryRed,
      textColor: AppColors.white,
      fontSize: 16.0,
    );
  }

  static String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }
}
