import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BRoute extends GoRouteData {
  static const config = TypedGoRoute<BRoute>(path: 'b');

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BScreen();
  }
}

class BScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('B'),
      ),
    );
  }
}
