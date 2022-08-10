import 'package:go_router/go_router.dart';

import '../../application/auth/auth_bloc.dart';
import '../../injector.dart';
import '../pages/home/home_page.dart';
import '../pages/login/login_page.dart';
import 'routes.dart';

GoRouter router = GoRouter(
  urlPathStrategy: UrlPathStrategy.path,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: Routes.login,
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/',
      redirect: (state) => state.namedLocation(Routes.home),
    ),
    GoRoute(
      name: Routes.home,
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
  ],
  redirect: (state) {
    var authState = sl<AuthBloc>().state;
    var loggingIn = state.subloc == '/login';
    return authState.maybeWhen(
      authenticated: (_) => loggingIn ? '/' : null,
      unauthenticated: () => loggingIn ? null : '/login',
      orElse: () => null,
    );
  },
  refreshListenable: GoRouterRefreshStream(sl<AuthBloc>().stream),
);
