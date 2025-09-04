import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import '../../../../../core/themes/app_color.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size_provider.dart';
import '../../../../../core/widgets/app_text_button.dart';

class GooglButtonWidget extends StatelessWidget {
  const GooglButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
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
    );
  }
}
