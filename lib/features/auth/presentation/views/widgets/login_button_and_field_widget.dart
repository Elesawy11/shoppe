import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class LoginButtonAndFieldsWidget extends StatelessWidget {
  const LoginButtonAndFieldsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(hintText: 'email', validator: (value) {}),
          context.verticalSpace(24),
          AppTextFormField(hintText: 'password', validator: (value) {}),
          context.verticalSpace(60),
          AppTextButton(text: 'Login', onPressed: () {}),
        ],
      ),
    );
  }
}
