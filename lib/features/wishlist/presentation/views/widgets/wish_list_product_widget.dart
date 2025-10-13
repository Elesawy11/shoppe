import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

import '../../../../../core/themes/app_color.dart';

class WishListProductWidget extends StatelessWidget {
  const WishListProductWidget({super.key, required this.product});
  final Map<String, dynamic> product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColor.grayDD)),
      ),
      child: Row(
        children: [
          // Product Image
          Image.asset(
            product["image"],
            width: context.screenWidth * 0.3,
            height: context.screenWidth * 0.3,
            fit: BoxFit.cover,
          ),
          context.horizontalSpace(12),

          // Title + Subtitle + Price
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product["title"],
                  style: context.bodyBold,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  product["subtitle"],
                  style: context.body,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "\$${product["price"].toStringAsFixed(2)}",
                  style: context.bodyBold,
                  maxLines: 1,
                ),
              ],
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  // Handle remove from wishlist action
                },
                icon: const Icon(Icons.close),
                color: AppColor.primary,
              ),
              IconButton(
                onPressed: () {
                  // Handle add to cart action
                },
                icon: const Icon(Icons.add_shopping_cart),
                color: AppColor.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
