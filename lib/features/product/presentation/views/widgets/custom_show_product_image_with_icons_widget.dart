import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';
import '../../../../../core/utils/assets.dart';

class CustomShowProductImageWithIconsWidget extends StatefulWidget {
  const CustomShowProductImageWithIconsWidget({super.key});

  @override
  State<CustomShowProductImageWithIconsWidget> createState() =>
      _CustomShowProductImageWithIconsWidgetState();
}

class _CustomShowProductImageWithIconsWidgetState
    extends State<CustomShowProductImageWithIconsWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.45,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: 3,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(
                Assets.imagesProduct,
                fit: BoxFit.fill,
                width: double.infinity,
              );
            },
          ),
          Positioned(
            top: context.setMinSize(40),
            left: context.setMinSize(20),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: context.setMinSize(24),
              ),
              onPressed: () => context.pop(),
            ),
          ),
          Positioned(
            top: context.setMinSize(40),
            right: context.setMinSize(20),
            child: IconButton(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: context.setMinSize(24),
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
            bottom: context.setMinSize(10),
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: context.setMinSize(4),
                  ),
                  width: currentIndex == index
                      ? context.setMinSize(12)
                      : context.setMinSize(8),
                  height: currentIndex == index
                      ? context.setMinSize(12)
                      : context.setMinSize(8),
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.black : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
