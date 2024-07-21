import 'package:common_widgets/core/constants/app_constants.dart';
import 'package:common_widgets/core/widgets/app_loader.dart';
import 'package:common_widgets/core/widgets/custom_alert_dialog_box.dart';
import 'package:common_widgets/core/widgets/custom_dialog_box.dart';
import 'package:common_widgets/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/widgets/particular_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Common Widgets",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
            vertical: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ParticularWidget(
                text: "App Loader",
                buttonText: "Loader",
                onPressed: () {
                  AppLoader.showLoader(context: context);
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              ParticularWidget(
                text: "Dialog Boxes",
                buttonText: "Dialog 1",
                onPressed: () {
                  customDialogBox(
                    context: context,
                    height: 185.h,
                    isHeadText: true,
                    headText: "Dialog 1",
                    content:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    buttonText: "Okay",
                    onTap: () {
                      Navigator.of(context).maybePop();
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomElevatedButton(
                height: 40.h,
                onPressed: () {
                  customAlertDialogBox(
                    context: context,
                    height: 185.h,
                    isHeadText: true,
                    headText: "Dialog 1",
                    bodyText:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    tapLeftButton: () {
                      Navigator.of(context).maybePop();
                    },
                    tapRightButton: () {
                      Navigator.of(context).maybePop();
                    },
                    leftButtonText: "NO",
                    rightButtonText: "YES",
                  );
                },
                child: Text(
                  "Dialog 2",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ParticularWidget(
                text: "Snackars",
                buttonText: "Success Snackbar",
                backgroundColor: Colors.green,
                onPressed: () {
                  AppConstants.showSnackbar(
                    backgroundColor: Colors.green,
                    text: "Success",
                  );
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomElevatedButton(
                height: 40.h,
                backgroundColor: Colors.red,
                onPressed: () {
                  AppConstants.showSnackbar(
                    backgroundColor: Colors.red,
                    text: "Error",
                  );
                },
                child: Text(
                  "Error Snackbar",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomElevatedButton(
                height: 40.h,
                backgroundColor: Colors.orange,
                onPressed: () {
                  AppConstants.showSnackbar(
                    backgroundColor: Colors.orange,
                    text: "Warning",
                  );
                },
                child: Text(
                  "Warning Snackbar",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
