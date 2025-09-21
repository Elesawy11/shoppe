import '../../core/utils/assets.dart';
import '../widgets/app_navigation_bar_items.dart';

class Constants {
  Constants._();

  static List<NavigationBarItemsImagesModel> appNavigationBarItems = [
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imagesHomeIcon,
      activeImageIcon: Assets.svg_imagesHomeActiveIcon,
      label: 'Home',
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imagesCartIcon,
      activeImageIcon: Assets.svg_imagesActiveCartIcon,
      label: 'Cart',
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imagesNotifiIcon,
      activeImageIcon: Assets.svg_imagesActiveNotifiIcon,
      label: 'Notifi',
    ),
    NavigationBarItemsImagesModel(
      imageIcon: Assets.svg_imagesProfileIcon,
      activeImageIcon: Assets.svg_imagesActiveProfileIcon,
      label: 'Profile',
    ),
  ];
}
