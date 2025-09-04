import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/app_padding.dart';
import 'package:shoppe/core/utils/styles.dart';
import '../../../../core/helpers/spacer_extension.dart';
import '../../../../core/themes/app_color.dart';
import 'widgets/change_auth_widget.dart';
import 'widgets/google_button_widget.dart';
import 'widgets/login_button_and_field_widget.dart';
import 'widgets/logo_images_widget.dart';
import 'widgets/or_and_divider_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.horizontalPadding,
                vertical: context.verticalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const LogoImagesWidget(),

                  context.verticalSpace(24),
                  Text(
                    'Welcome!',
                    style: context.title.copyWith(color: AppColor.primary),
                  ),
                  context.verticalSpace(12),
                  Text(
                    'Please login or register to continue',
                    style: context.small.copyWith(color: AppColor.secondary),
                  ),
                  context.verticalSpace(60),
                  const LoginButtonAndFieldsWidget(),
                  context.verticalSpace(24),
                  const OrAndDividerWidget(),
                  context.verticalSpace(24),
                  const GooglButtonWidget(),
                  context.verticalSpace(24),
                  const Center(child: ChangeAuthWidget()),
                  context.verticalSpace(12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
