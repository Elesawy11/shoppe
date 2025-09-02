import 'package:go_router/go_router.dart';
import 'package:shoppe/features/auth/presentation/views/login_view.dart';

import 'routes.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => LoginView(),
    ),
  ],
);