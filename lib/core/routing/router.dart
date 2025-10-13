import 'package:go_router/go_router.dart';
import 'package:shoppe/features/auth/presentation/views/login_view.dart';
import 'package:shoppe/features/cart/presentation/views/cart_view.dart';
import 'package:shoppe/features/wishlist/presentation/views/wish_list_view.dart';
import 'package:shoppe/features/product/presentation/views/product_view.dart';
import 'package:shoppe/features/profile/presentation/views/profile_view.dart';
import '../widgets/app_navigation_bar.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../widgets/app_navigation_bar_items.dart';
import '../utils/constant.dart';
import 'routes.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(path: Routes.login, builder: (context, state) => const LoginView()),
    GoRoute(
      path: Routes.signup,
      builder: (context, state) => const SignUpView(),
    ),

    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => AppNavigationBar(
        navigationShell: navigationShell,
        items: appNavigationBarItems(
          context: context,
          list: Constants.appNavigationBarItems,
        ),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (context, state) => const HomeView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.cart,
              builder: (context, state) => const CartView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.notification,
              builder: (context, state) => const WishListView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.profile,
              builder: (context, state) => const ProfileView(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: Routes.product,
      builder: (context, state) => const ProductView(),
    ),
  ],
);
