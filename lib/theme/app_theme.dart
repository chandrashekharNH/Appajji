import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeForLocale(Locale locale) {
    final isKannada = locale.languageCode == 'kn';

    return ThemeData(
      useMaterial3: true,
      fontFamily: isKannada ? 'NotoSerifKannada' : null,

      scaffoldBackgroundColor: const Color(0xFFFFF8F0),

      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFF7A18),
        foregroundColor: Colors.white,
      ),
    );
  }
}