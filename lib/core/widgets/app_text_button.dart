import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.child,
    this.width,
    this.height,
  });
  final void Function()? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? child;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        overlayColor: Colors.black.withValues(),
        backgroundColor: backgroundColor ?? Colors.black,
        minimumSize: Size(width ?? double.infinity, height ?? 52.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      child:
          child ??
          Text(
            text,
            style: Styles.button.copyWith(color: textColor ?? Colors.white),
          ),
    );
  }
}
