import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

// This handles your AI connection
final aiModelProvider = Provider((ref) {
  return GenerativeModel(
    model: 'gemini-pro',
    apiKey: 'YOUR_API_KEY_HERE', // We will fix this part later!
  );
});

// This manages the app's state
final confidenceScoreProvider = StateProvider<double>((ref) => 0.0);
final isRecordingProvider = StateProvider<bool>((ref) => false);
