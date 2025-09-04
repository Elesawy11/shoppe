import 'package:go_router/go_router.dart';
import 'package:shoppe/features/auth/presentation/views/login_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import 'routes.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(path: Routes.login, builder: (context, state) => const LoginView()),
    GoRoute(
      path: Routes.signup,
      builder: (context, state) => const SignUpView(),
    ),
  ],
);
