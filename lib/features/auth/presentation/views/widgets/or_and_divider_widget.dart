import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

class OrAndDividerWidget extends StatelessWidget {
  const OrAndDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: context.screenWidth * 0.3,
          child: const Divider(height: 2),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.setWidth(8)),
          child: Text('or', style: context.small),
        ),
        SizedBox(
          width: context.screenWidth * 0.3,
          child: const Divider(height: 2),
        ),
      ],
    );
  }
}
