import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme.dart';
import '../../core/providers.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRecording = ref.watch(isRecordingProvider);

    return Scaffold(
      backgroundColor: ConfidoTheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [ConfidoTheme.goldGlow],
              ),
              child: Icon(Icons.psychology, size: 100, color: ConfidoTheme.gold),
            ),
            const SizedBox(height: 40),
            Text(
              'CONFIDO',
              style: TextStyle(
                color: ConfidoTheme.gold,
                fontSize: 32,
                letterSpacing: 4,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            GestureDetector(
              onTap: () => ref.read(isRecordingProvider.notifier).state = !isRecording,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: ConfidoTheme.goldGradient,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  isRecording ? Icons.stop : Icons.mic,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
