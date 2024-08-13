import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/routing/app_router.dart';
import 'package:frontend/src/utils/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return MaterialApp.router(
            routerConfig: goRouter(), theme: ref.watch(themeProvider));
      },
    );
  }
}
