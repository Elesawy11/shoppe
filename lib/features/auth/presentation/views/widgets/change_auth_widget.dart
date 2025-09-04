import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/styles.dart';
import '../../../../../core/themes/app_color.dart';

class ChangeAuthWidget extends StatelessWidget {
  const ChangeAuthWidget({
    super.key,
    required this.text,
    required this.methodName,
    this.onTap,
  });
  final String text;
  final String methodName;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: context.small.copyWith(color: AppColor.primary),
          ),
          TextSpan(
            text: methodName,
            style: context.body.copyWith(decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
