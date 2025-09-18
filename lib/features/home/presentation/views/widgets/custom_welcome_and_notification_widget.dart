import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

import '../../../../../core/themes/app_color.dart';

class CustomWelcomeAndNotificationWidget extends StatelessWidget {
  const CustomWelcomeAndNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            borderRadius: BorderRadius.circular(context.setMinSize(22)),
            color: AppColor.grayDD,
          ),
          child: Icon(
            Icons.notifications,
            size: context.setMinSize(30),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
