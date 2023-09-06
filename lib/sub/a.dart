import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ARoute extends GoRouteData {
  static const config = TypedGoRoute<ARoute>(path: 'a');

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AScreen();
  }
}

class AScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('A'),
      ),
    );
  }
}
