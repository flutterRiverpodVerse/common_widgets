import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> customDialogBox({
  required BuildContext context,
  required String content,
  required String buttonText,
  required VoidCallback onTap,
  required double height,
  bool? isHeadText = false,
  String? headText,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.r,
          ),
        ),
        content: Container(
          height: height,
          width: 1.sw,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              isHeadText == true
                  ? Padding(
                      padding: EdgeInsets.only(
                        left: 15.w,
                        right: 15.w,
                        top: 15.h,
                      ),
                      child: Text(
                        headText!,
                        textAlign: TextAlign.center,
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                                  fontSize: 24.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.w,
                  right: 15.w,
                  top: 20.h,
                  bottom: 20.h,
                ),
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 20.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ),
              Divider(
                height: 0.h,
                thickness: 1.w,
                color: Colors.grey,
              ),
              Expanded(
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    width: 1.sw,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10.r,
                      ),
                    ),
                    child: Text(
                      buttonText,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            fontSize: 20.sp,
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
