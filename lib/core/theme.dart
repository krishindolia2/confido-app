import 'package:flutter/material.dart';

class ConfidoTheme {
  static const Color gold = Color(0xFFD4AF37);
  static const Color background = Colors.black;
  static const Color surface = Color(0xFF1A1A1A);
  
  static BoxShadow goldGlow = BoxShadow(
    color: gold.withOpacity(0.3),
    blurRadius: 20,
    spreadRadius: 2,
  );

  static LinearGradient goldGradient = const LinearGradient(
    colors: [gold, Color(0xFFB8860B)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
