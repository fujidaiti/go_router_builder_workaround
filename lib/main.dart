// A WORKAROUND FOR https://github.com/flutter/flutter/issues/122258.
import 'package:example/home.dart';
import 'package:example/login.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: const LoginRoute().location,
  routes: [
    HomeRoute.tree,
    LoginRoute.tree,
  ],
);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}
