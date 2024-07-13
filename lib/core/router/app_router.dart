import 'package:e_commerce/features/splach/ui/views/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const initialRoute = '/';

  static final GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const SplachView(),
      ),
    ],
  );
}
