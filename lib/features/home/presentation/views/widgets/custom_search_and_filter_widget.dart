import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

import '../../../../../core/themes/app_color.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class CustomSearchAndFilterWidget extends StatelessWidget {
  const CustomSearchAndFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            hintText: 'search',
            validator: ((p0) {}),
            prefixIcon: Padding(
              padding: EdgeInsets.all(context.setMinSize(8)),
              child: SvgPicture.asset(
                Assets.svg_imagesSearchIcon,

                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: AppColor.grayDD,
          ),
        ),
        context.horizontalSpace(12),
        Container(
          padding: EdgeInsets.all(context.setMinSize(12)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.setMinSize(16)),
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
    );
  }
}
