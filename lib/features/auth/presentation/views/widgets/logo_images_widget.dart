import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

import '../../../../../core/utils/assets.dart';

class LogoImagesWidget extends StatelessWidget {
  const LogoImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            Assets.imagesSplash,
            fit: BoxFit.cover,
            height: context.screenWidth * 0.25,
            width: context.screenWidth * 0.25,
          ),
        ),
        Center(
          child: Image.asset(
            Assets.imagesTitle,
            fit: BoxFit.cover,

            width: context.screenWidth * 0.25,
          ),
        ),
      ],
    );
  }
}
