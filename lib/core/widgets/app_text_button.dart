import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import '../themes/app_color.dart';
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
        backgroundColor: backgroundColor ?? AppColor.primary,
        minimumSize: Size(
          width ?? double.infinity,
          height ?? context.setHeight(52),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(context.setMinSize(16)),
        ),
      ),
      child:
          child ??
          Text(
            text,
            style: context.button.copyWith(
              color: textColor ?? AppColor.white,
            ),
          ),
    );
  }
}
