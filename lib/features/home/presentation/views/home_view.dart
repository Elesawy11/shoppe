import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/themes/app_color.dart';
import 'package:shoppe/core/utils/app_padding.dart';
import 'package:shoppe/core/utils/assets.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';
import 'package:shoppe/core/widgets/app_text_form_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.horizontalPadding,
            vertical: context.verticalPadding,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome!!', style: context.homeBody),
                      Text('User', style: context.body),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(context.setMinSize(8)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        context.setMinSize(22),
                      ),
                      color: AppColor.grayDD,
                    ),
                    child: Icon(
                      Icons.notifications,
                      size: context.setMinSize(30),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              context.verticalSpace(24),
              Row(
                children: [
                  Expanded(
                    child: AppTextFormField(
                      hintText: 'search',
                      validator: ((p0) {}),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(context.setMinSize(8)),
                        child: SvgPicture.asset(
                          Assets.svg_imagesSearchIcon,

                          fit: BoxFit.fill,
                        ),
                      ),
                      backgroundColor: AppColor.grayDD,
                    ),
                  ),
                  context.horizontalSpace(12),
                  Container(
                    padding: EdgeInsets.all(context.setMinSize(12)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        context.setMinSize(16),
                      ),
                      color: AppColor.grayDD,
                    ),
                    child: SvgPicture.asset(
                      Assets.svg_imagesFilterIcon,
                      width: context.setMinSize(18),
                      height: context.setMinSize(18),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
