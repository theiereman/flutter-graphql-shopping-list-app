import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/utils/custom_provider_observer.dart';

import 'src/app.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  runApp(
      ProviderScope(observers: [CustomProviderObserver()], child: const App()));
}
