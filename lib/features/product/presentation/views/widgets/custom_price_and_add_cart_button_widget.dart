import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';
import '../../../../../core/themes/app_color.dart';

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
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: EdgeInsets.symmetric(
              horizontal: context.setMinSize(40),
              vertical: context.setMinSize(22),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.setMinSize(20)),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: context.setMinSize(20),
              ),
              context.horizontalSpace(8),
              Text(
                'Add to cart',
                style: context.button.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
