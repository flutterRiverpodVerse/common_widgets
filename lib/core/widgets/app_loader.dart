import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_constants.dart';

mixin AppLoader {
  static void showLoader({
    required BuildContext context,
  }) {
    showDialog(
      useSafeArea: false,
      context: context,
      barrierDismissible: true,
      builder: (_) {
        return PopScope(
          canPop: true,
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Center(
              child: Platform.isAndroid
                  ? CircularProgressIndicator(
                      color: AppConstants.isDarkMode(context: context)
                          ? Colors.white
                          : Colors.blue,
                      strokeWidth: 2.w,
                    )
                  : CupertinoActivityIndicator(
                      color: AppConstants.isDarkMode(context: context)
                          ? Colors.white
                          : Colors.blue,
                      radius: 25.r,
                    ),
            ),
          ),
        );
      },
    );
  }

  static void stopLoader({
    required BuildContext context,
  }) {
    Navigator.of(context).maybePop();
  }
}
