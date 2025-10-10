import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/styles.dart';

class CustomDetailsOfCart extends StatelessWidget {
  const CustomDetailsOfCart({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("$title:", style: context.bodyBold),
        Text("\$${price.toStringAsFixed(2)}", style: context.homeBody),
      ],
    );
  }
}
