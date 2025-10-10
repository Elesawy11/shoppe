import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/styles.dart';
import '../../../../../core/themes/app_color.dart';
import '../../../../../core/widgets/custom_elevated_button_widget.dart';

class CustomPriceAndAddCartButtonWidget extends StatelessWidget {
  const CustomPriceAndAddCartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Column for price
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Price',
              style: context.bodyBold.copyWith(color: AppColor.secondary),
            ),
            context.verticalSpace(6),
            Text('\$245.00', style: context.title),
          ],
        ),
        // Button
        CustomElevatedButtonWidget(onPressed: () {}, title: 'Add to cart'),
      ],
    );
  }
}
