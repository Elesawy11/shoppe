import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

class CustomTitleRatingQuantityOfProductWidget extends StatefulWidget {
  const CustomTitleRatingQuantityOfProductWidget({super.key});

  @override
  State<CustomTitleRatingQuantityOfProductWidget> createState() =>
      _CustomTitleRatingQuantityOfProductWidgetState();
}

class _CustomTitleRatingQuantityOfProductWidgetState
    extends State<CustomTitleRatingQuantityOfProductWidget> {
  int quantity = 1;

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
        Container(
          padding: EdgeInsets.symmetric(horizontal: context.setMinSize(8)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.setMinSize(12)),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  if (quantity > 1) {
                    setState(() {
                      quantity--;
                    });
                  }
                },
                icon: Icon(Icons.remove, size: context.setMinSize(20)),
              ),
              Text("$quantity", style: TextStyle(fontSize: context.setSp(16))),
              IconButton(
                onPressed: () {
                  setState(() {
                    quantity++;
                  });
                },
                icon: Icon(Icons.add, size: context.setMinSize(20)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
