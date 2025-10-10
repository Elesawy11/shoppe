import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

import 'custom_quantity_widget.dart';

class CustomTitleRatingQuantityOfProductWidget extends StatelessWidget {
  const CustomTitleRatingQuantityOfProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Title + Rating
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Axel Arigato", style: context.title),
            context.verticalSpace(6),
            Row(
              children: [
                RatingBar.builder(
                  initialRating: 4.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: context.setMinSize(20),
                  itemBuilder: (context, _) =>
                      const Icon(Icons.star, color: Colors.amber),
                  onRatingUpdate: (rating) {},
                ),
                context.horizontalSpace(6),
                Text("(270 Review)", style: context.body),
              ],
            ),
          ],
        ),

        /// Quantity
        const CustomQuantityWidget(),
      ],
    );
  }
}
