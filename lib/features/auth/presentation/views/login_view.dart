import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/app_padding.dart';
import 'package:shoppe/core/utils/assets.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/size_provider.dart';
import 'package:shoppe/core/utils/styles.dart';
import 'package:shoppe/core/widgets/app_text_button.dart';
import 'package:shoppe/core/widgets/app_text_form_field.dart';

import '../../../../core/helpers/spacer_extension.dart';
import '../../../../core/themes/app_color.dart';

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
                  Center(
                    child: Image.asset(
                      Assets.imagesSplash,
                      fit: BoxFit.cover,
                      height: context.getWidth * 0.25,
                      width: context.getWidth * 0.25,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      Assets.imagesTitle,
                      fit: BoxFit.cover,

                      width: context.getWidth * 0.25,
                    ),
                  ),
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
                  AppTextFormField(hintText: 'email', validator: (value) {}),
                  context.verticalSpace(24),
                  AppTextFormField(hintText: 'password', validator: (value) {}),
                  context.verticalSpace(60),
                  AppTextButton(text: 'Login', onPressed: () {}),
                  context.verticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: context.getWidth * 0.3,
                        child: const Divider(height: 2),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: context.setWidth(8),
                        ),
                        child: Text('or', style: context.small),
                      ),
                      SizedBox(
                        width: context.getWidth * 0.3,
                        child: const Divider(height: 2),
                      ),
                    ],
                  ),
                  context.verticalSpace(24),
                  AppTextButton(
                    text: 'Continue with Google',
                    onPressed: () {},
                    backgroundColor: AppColor.surface,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizeProvider(
                          baseSize: const Size(24, 24),
                          width: context.setMinSize(24),
                          height: context.setMinSize(24),
                          child: Builder(
                            builder: (context) {
                              return Image.asset(
                                Assets.imagesGoogleIcon,
                                height: context.setMinSize(24),
                                width: context.setMinSize(24),
                                fit: BoxFit.cover,
                              );
                            },
                          ),
                        ),
                        context.horizontalSpace(8),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: AppColor.primary,
                            fontSize: context.setSp(18),
                          ),
                        ),
                      ],
                    ),
                  ),
                  context.verticalSpace(24),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t have an account? ',
                            style: context.small.copyWith(
                              color: AppColor.primary,
                            ),
                          ),
                          TextSpan(
                            text: 'Register',
                            style: context.body.copyWith(
                              decoration: TextDecoration.underline,
                            ),
                            onEnter: (event) {},
                          ),
                        ],
                      ),
                    ),
                  ),
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
