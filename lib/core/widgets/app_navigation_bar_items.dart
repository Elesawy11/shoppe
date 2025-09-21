import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

import '../themes/app_color.dart';

List<BottomNavigationBarItem> appNavigationBarItems({
  required List<NavigationBarItemsImagesModel> list,
  required BuildContext context,
}) {
  return List.generate(
    list.length,
    (index) => bootmNavigationBarItem(
      icon: SvgPicture.asset(
        list[index].imageIcon,
        width: context.setMinSize(24),
        height: context.setMinSize(24),
      ),
      label: list[index].label,
      activeIcon: Container(
        padding: EdgeInsets.all(context.setMinSize(8)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.setMinSize(22)),
          color: AppColor.primary,
        ),
        child: SvgPicture.asset(
          list[index].activeImageIcon,
          width: context.setMinSize(24),
          height: context.setMinSize(24),
        ),
      ),
    ),
  );
}

BottomNavigationBarItem bootmNavigationBarItem({
  required Widget icon,
  required String label,
  required Widget activeIcon,
}) {
  return BottomNavigationBarItem(
    icon: icon,
    label: label,
    activeIcon: activeIcon,
  );
}

class NavigationBarItemsImagesModel {
  final String imageIcon;
  final String activeImageIcon;
  final String label;

  NavigationBarItemsImagesModel({
    required this.label,
    required this.imageIcon,
    required this.activeImageIcon,
  });
}
