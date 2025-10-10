import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/app_padding.dart';
import 'package:shoppe/core/utils/assets.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';
import 'package:shoppe/core/widgets/custom_elevated_button_widget.dart';
import 'widgets/cart_price_details_widget.dart';
import 'widgets/cart_product_widget.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final List<Map<String, dynamic>> items = [
    {
      "title": "Roller Rabbit",
      "subtitle": "Vado Odelle Dress",
      "price": 198.0,
      "image": Assets.imagesProduct,
    },
    {
      "title": "Axel Arigato",
      "subtitle": "Clean 90 Tirole Snakers",
      "price": 245.0,
      "image": Assets.imagesProduct,
    },
    {
      "title": "Herschel Supply Co.",
      "subtitle": "Daypack Backpack",
      "price": 40.0,
      "image": Assets.imagesProduct,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row => Back Button + Cart Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.setMinSize(16),
                      vertical: context.setMinSize(8),
                    ),
                    child: Text("My Cart", style: context.title),
                  ),
                  Stack(
                    children: [
                      Material(
                        elevation: 2,
                        borderRadius: BorderRadius.circular(
                          context.setMinSize(16),
                        ),
                        color: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                            size: context.setMinSize(24),
                          ),
                        ),
                      ),
                      Positioned(
                        right: context.setMinSize(6),
                        top: context.setMinSize(6),
                        child: CircleAvatar(
                          radius: context.setMinSize(8),
                          backgroundColor: Colors.black,
                          child: Center(
                            child: Text(
                              items.length.toString(),
                              style: context.notifiNumber.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // List of Items
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final product = items[index];
                    return CartProductWidget(product: product);
                  },
                ),
              ),

              // Summary Container
              const CartPriceDetailsWidget(),
              context.verticalSpace(16),
              // Checkout Button
              CustomElevatedButtonWidget(onPressed: () {}, title: 'Checkout'),
            ],
          ),
        ),
      ),
    );
  }
}
