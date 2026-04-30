import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ConfidoApp(),
    ),
  );
}

class ConfidoApp extends StatelessWidget {
  const ConfidoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confido',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
