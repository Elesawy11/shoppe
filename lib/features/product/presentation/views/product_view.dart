import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/themes/app_color.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';
import 'package:shoppe/features/product/presentation/views/widgets/custom_show_product_image_with_icons_widget.dart';
import 'widgets/custom_dimension_box_widget.dart';
import 'widgets/custom_price_and_add_cart_button_widget.dart';
import 'widgets/custom_title_rating_quantity_of_product_widget.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomShowProductImageWithIconsWidget(),

          /// Bottom Section
          Expanded(
            child: Container(
              padding: EdgeInsets.all(context.setMinSize(20)),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(context.setMinSize(24)),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title + Rating + Quantity
                    const CustomTitleRatingQuantityOfProductWidget(),

                    context.verticalSpace(20),

                    /// Size Text
                    Text("Size", style: context.subtitle),

                    context.verticalSpace(12),

                    /// Custom Dimensions (Width, Height, Depth)
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomDimensionBoxWidget(title: "Width", value: 30),
                        CustomDimensionBoxWidget(title: "Height", value: 30),
                        CustomDimensionBoxWidget(title: "Depth", value: 30),
                        CustomDimensionBoxWidget(title: "Weight", value: 30),
                      ],
                    ),
                    context.verticalSpace(12),

                    Text('Description', style: context.subtitle),
                    context.verticalSpace(8),
                    // Description text
                    Text(
                      'Engineered to crush any movement-based workout, these On sneakers enhance the label\'s original Cloud sneaker with cutting edge technologies for a pair.',
                      style: context.body.copyWith(color: AppColor.secondary),
                    ),

                    context.verticalSpace(20),
                    const CustomPriceAndAddCartButtonWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
