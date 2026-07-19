import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const background = Color(0xFF0A0E1A);
  static const card = Color(0xFF111827);
  static const teal = Color(0xFF00D4FF);
  static const amber = Color(0xFFF59E0B);
  static const text = Color(0xFFF9FAFB);
  static const muted = Color(0xFF9CA3AF);
  static const border = Color(0xFF1F2937);
}

class AppTheme {
  static ThemeData dark() {
    final body = GoogleFonts.interTextTheme();
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(primary: AppColors.teal, secondary: AppColors.amber, surface: AppColors.card),
      textTheme: body.copyWith(
        displayLarge: GoogleFonts.spaceGrotesk(color: AppColors.text, fontWeight: FontWeight.w700),
        displayMedium: GoogleFonts.spaceGrotesk(color: AppColors.text, fontWeight: FontWeight.w700),
        headlineMedium: GoogleFonts.spaceGrotesk(color: AppColors.text, fontWeight: FontWeight.w700),
        titleLarge: GoogleFonts.spaceGrotesk(color: AppColors.text, fontWeight: FontWeight.w700),
        bodyLarge: GoogleFonts.inter(color: AppColors.text, height: 1.6),
        bodyMedium: GoogleFonts.inter(color: AppColors.muted, height: 1.5),
      ),
      cardTheme: CardThemeData(color: AppColors.card, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))),
      dividerColor: AppColors.border,
      useMaterial3: true,
    );
  }
}
