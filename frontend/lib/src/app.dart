import 'package:flutter/material.dart';
import 'package:frontend/src/routing/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: goRouter());
  }
}
