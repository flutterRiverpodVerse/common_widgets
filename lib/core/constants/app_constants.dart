import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_config.dart';

mixin AppConstants {
  static bool isDarkMode({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark;
  }

  static showSnackbar({
    required Color backgroundColor,
    IconData? iconData,
    required String text,
  }) {
    AppConfig.rootScaffoldMessengerKey.currentState!.showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Row(
          children: [
            Icon(
              backgroundColor == Colors.red
                  ? Icons.close
                  : backgroundColor == Colors.orange
                      ? Icons.warning
                      : backgroundColor == Colors.green
                          ? Icons.check
                          : iconData,
              color: Colors.white,
            ),
            SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: Text(
                text,
                style:
                    Theme.of(AppConfig.rootScaffoldMessengerKey.currentContext!)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                          color: Colors.white,
                        ),
              ),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.r,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
          vertical: 10.h,
        ),
        duration: const Duration(
          seconds: 2,
        ),
      ),
    );
  }
}
