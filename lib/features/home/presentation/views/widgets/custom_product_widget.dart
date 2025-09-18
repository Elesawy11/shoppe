import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

import '../../../../../core/themes/app_color.dart';
import '../../../../../core/utils/assets.dart';

class CustomProductWidget extends StatelessWidget {
  const CustomProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * 0.45,

      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(context.setMinSize(16)),
            child: Image.asset(
              Assets.imagesProduct,
              fit: BoxFit.cover,
              width: context.screenWidth * 0.45,
              height: context.screenWidth * 0.45,
            ),
          ),
          Text(
            'product name',
            textAlign: TextAlign.center,
            style: context.homeBody,
            maxLines: 1,
          ),
          Text(
            'Product descriptiondsfdfsdfsdf',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: context.body.copyWith(color: AppColor.secondary),
          ),
          Text(
            '\$100',
            textAlign: TextAlign.center,
            style: context.homeBody,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
