// DO NOT REMOVE THESE IMPORTS, THEY WILL BE USED IN THE GENERATED FILE.
import 'package:example/sub/a.dart';
import 'package:example/sub/b.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'home.g.dart';

@HomeRoute.config
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static RouteBase get tree => $homeRoute;

  static const config = TypedGoRoute<HomeRoute>(
    path: '/home',
    routes: [
      ARoute.config,
      BRoute.config,
    ],
  );

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => ARoute().go(context),
              child: const Text('A'),
            ),
            ElevatedButton(
              onPressed: () => BRoute().go(context),
              child: const Text('B'),
            ),
          ],
        ),
      ),
    );
  }
}
