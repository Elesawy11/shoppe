import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/styles.dart';
import '../../../../../core/themes/app_color.dart';

class ChangeAuthWidget extends StatelessWidget {
  const ChangeAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: context.small.copyWith(color: AppColor.primary),
          ),
          TextSpan(
            text: 'Register',
            style: context.body.copyWith(decoration: TextDecoration.underline),
            onEnter: (event) {},
          ),
        ],
      ),
    );
  }
}
