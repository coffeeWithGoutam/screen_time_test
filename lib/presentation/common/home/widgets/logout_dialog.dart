import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_time_test/core/utils/responsive.dart';

import '../../../../core/constants/colors.dart';
import '../../../widgets/custom_button.dart';

class LogoutDialog {
  Future<void> dialogBox({
    required BuildContext context,
    required Widget icon,
    required String title,
    required String message,
    TextStyle? textStyle,
    Function(BuildContext)? handler,
  }) async {
    return showDialog<void>(
      barrierColor: Colors.black26.withValues(alpha: 0.8),
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        final ThemeData theme = Theme.of(context);
        return theme.platform == TargetPlatform.iOS
            ? CupertinoAlertDialog(
              title: Column(spacing: 8, children: [icon, Text(title)]),
              content: Text(message, style: textStyle),
              actions: [
                CupertinoDialogAction(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text("Cancel"),
                ),
                CupertinoDialogAction(
                  onPressed: () {
                    context.pop();
                    if (handler != null) {
                      handler(context);
                    }
                  },
                  child: const Text("Ok"),
                ),
              ],
            )
            : AlertDialog(
              backgroundColor: Colors.white,
              title: Column(spacing: 8, children: [icon, Text(title)]),
              content: Text(message, style: textStyle),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomButton(
                      backgroundColor: Color(0xFFF5F6FA),
                      width: context.setRh(0.1),
                      textColor: Color(0xFF6E6E6E),
                      buttonText: "No".toUpperCase(),
                      onPressed: () {
                        context.pop();
                      },
                    ),
                    CustomButton(
                      backgroundColor: AppColors.mainBlue,
                      width: context.setRh(0.1),
                      buttonText: "Yes".toUpperCase(),
                      onPressed: () {
                        context.pop();
                        if (handler != null) {
                          handler(context);
                        }
                      },
                    ),
                  ],
                ),
              ],
            );
      },
    );
  }
}
