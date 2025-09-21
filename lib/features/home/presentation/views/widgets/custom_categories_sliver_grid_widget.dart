import 'package:flutter/material.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

import 'custom_product_widget.dart';

class CustomCategoriesSliverGridWidget extends StatelessWidget {
  const CustomCategoriesSliverGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: context.setWidth(200),
        crossAxisSpacing: context.setMinSize(8),
        // crossAxisCount: 2,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (context, index) {
        return const CustomProductWidget();
      },
    );
  }
}
