import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shoppe/core/themes/app_color.dart';
import 'package:shoppe/core/utils/size_helper_extention.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({
    super.key,
    required this.navigationShell,
    required this.items,
  });
  final StatefulNavigationShell navigationShell;
  final List<BottomNavigationBarItem> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(context.setMinSize(20)),
          topRight: Radius.circular(context.setMinSize(20)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColor.white,
          showSelectedLabels: true,
          selectedItemColor: AppColor.primary,
          selectedLabelStyle: TextStyle(
            fontSize: context.setSp(14),
            fontWeight: FontWeight.w700,
          ),
          // showUnselectedLabels: false,
          currentIndex: navigationShell.currentIndex,
          onTap: (value) => navigationShell.goBranch(value),
          items: items,
        ),
      ),
    );
  }
}
