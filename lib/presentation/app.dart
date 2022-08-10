import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../application/auth/auth_bloc.dart';
import '../injector.dart';
import 'resources/theme.dart';
import 'routes/router.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) =>
      _onAppLifeCycleStateChanged(state);

  void _onAppLifeCycleStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        bool rememberMe = sl<AuthBloc>().state.maybeWhen(
            orElse: () => false, authenticated: (rememberMe) => rememberMe);
        if (!rememberMe) {
          sl<AuthBloc>().add(const SignedOut());
        }
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      lazy: false,
      child: MaterialApp.router(
        title: 'Wigo Test Case',
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
        theme: AppTheme.darkTheme,
      ),
    );
  }
}
