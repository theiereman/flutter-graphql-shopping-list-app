import 'package:frontend/src/features/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { homeScreen }

final _router = GoRouter(routes: [
  GoRoute(
      path: '/',
      name: AppRoutes.homeScreen.name,
      builder: (context, state) => const HomeScreen())
]);

GoRouter goRouter() {
  return _router;
}
