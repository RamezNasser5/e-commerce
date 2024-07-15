import 'package:e_commerce/features/auth/ui/views/login_view.dart';
import 'package:e_commerce/features/auth/ui/views/signup_view.dart';
import 'package:e_commerce/features/home/ui/views/home_view.dart';
import 'package:e_commerce/features/splach/ui/views/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const initialRoute = '/';
  static const loginRoute = '/loginview';
  static const signupRoute = '/signupview';
  static const homeRoute = '/homeview';

  static final GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: loginRoute,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signupRoute,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
