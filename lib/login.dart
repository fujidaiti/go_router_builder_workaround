import 'package:example/home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'login.g.dart';

@LoginRoute.config
class LoginRoute extends GoRouteData {
  const LoginRoute();

  static RouteBase get tree => $loginRoute;

  static const config = TypedGoRoute<LoginRoute>(path: '/login');

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginScreen();
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => const HomeRoute().go(context),
          child: const Text('login'),
        ),
      ),
    );
  }
}
