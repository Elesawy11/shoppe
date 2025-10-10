import 'package:flutter/material.dart';
import 'package:shoppe/core/helpers/spacer_extension.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import 'package:shoppe/core/utils/styles.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({super.key, this.onPressed, required this.title});
  final VoidCallback? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: context.setMinSize(20),
          ),
          context.horizontalSpace(8),
          Text(
            title,
            style: context.button.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
