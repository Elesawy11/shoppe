import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

class CustomDimensionBoxWidget extends StatelessWidget {
  const CustomDimensionBoxWidget({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: context.bodyBold),
        context.verticalSpace(6),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.setWidth(12),
            vertical: context.setHeight(8),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.setMinSize(12)),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Text("$value", style: context.body),
        ),
      ],
    );
  }
}
