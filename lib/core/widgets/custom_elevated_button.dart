import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.height,
    required this.child,
    this.backgroundColor = Colors.blue,
    required this.onPressed,
  });

  final double height;
  final Widget child;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 1.sw,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          overlayColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.r,
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
