import 'package:common_widgets/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParticularWidget extends StatelessWidget {
  const ParticularWidget({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
  });

  final String text;
  final String buttonText;
  final void Function() onPressed;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomElevatedButton(
          height: 40.h,
          onPressed: onPressed,
          backgroundColor: backgroundColor,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
