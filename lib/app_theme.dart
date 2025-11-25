import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryRust = Color.fromRGBO(193, 107, 62, 1);
  static const Color successGreen = Color.fromRGBO(49, 104, 54, 1);
  static const Color backgroundCream =  Color.fromRGBO(253, 249, 247, 1);
  static const Color textDark = Color(0xFF2D2D2D);
  static const Color textGrey = Color(0xFF8A8A8A);
  static const Color priceText = Color(0xFFFFFFFF);
}

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: AppColors.primaryRust,
      scaffoldBackgroundColor: AppColors.backgroundCream,
      textTheme: GoogleFonts.poppinsTextTheme(),
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryRust),
      useMaterial3: true,
    );
  }
}
