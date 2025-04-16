import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_time_test/core/utils/responsive.dart';

import '../../../config/routes.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/styles.dart';
import '../../widgets/custom_button.dart';

const methodChannel = MethodChannel('flutter_screentime');

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.security,
                  size: context.setRh(0.2),
                  color: AppColors.black,
                ),
                SizedBox(height: context.setRh(0.1)),
                const Text(
                  "Security & Remote Features",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                const Text(
                  "In this you need to set up which functions you want to allow child",
                  style: AppStyles.kSplashDescriptionStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: context.setRh(0.03)),
                CustomButton(
                  buttonText: "Ok",
                  onPressed: () async {
                    var result = "approved";
                    if (Platform.isAndroid) {
                      result =
                          await methodChannel.invokeMethod('checkPermission')
                              as String;
                    }
                    debugPrint('[DEBUG]result: $result');
                    if (result == "approved") {
                      if (context.mounted) {
                        context.goNamed(Routes.kHome);
                      }
                    } else {
                      debugPrint('[DEBUG]Permission not granted');
                      await methodChannel.invokeMethod('requestAuthorization');
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () async {
                    var result = "approved";
                    if (Platform.isAndroid) {
                      result =
                          await methodChannel.invokeMethod('checkPermission')
                              as String;
                    }
                    debugPrint('[DEBUG]result: $result');
                    if (result == "approved") {
                      if (context.mounted) {
                        context.goNamed(Routes.kHome);
                      }
                    } else {
                      debugPrint('[DEBUG]Permission not granted');
                      await methodChannel.invokeMethod('requestAuthorization');
                    }
                  },
                  child: const Text(
                    "No, thanks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
