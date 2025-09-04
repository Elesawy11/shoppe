import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class LoginButtonAndFieldsWidget extends StatelessWidget {
  const LoginButtonAndFieldsWidget({
    super.key,
    required this.isSignup,
    this.onPressed,
    this.formKey,
  });
  final bool isSignup;
  final VoidCallback? onPressed;
  final GlobalKey<FormState>? formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(hintText: 'email', validator: (value) {}),
          context.verticalSpace(24),
          AppTextFormField(
            hintText: 'password',
            validator: (value) {},
            isObscureText: true,
          ),
          if (isSignup) ...[
            context.verticalSpace(24),
            AppTextFormField(
              hintText: 'confirm password',
              isObscureText: true,
              validator: (value) {},
            ),
          ],
          context.verticalSpace(60),
          AppTextButton(
            text: isSignup ? 'Sign Up' : 'Login',
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
