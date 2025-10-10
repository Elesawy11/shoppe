import 'package:flutter/material.dart';

import 'custom_details_of_cart_widget.dart';

class CartPriceDetailsWidget extends StatelessWidget {
  const CartPriceDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: List.generate(
          priceDetails.length,
          (index) =>
              CustomDetailsOfCart(title: priceDetails[index], price: 17.0),
        ),
      ),
    );
  }
}

List<String> priceDetails = ['Subtotal', 'Shipping', 'Total'];
