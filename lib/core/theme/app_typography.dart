import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static const String fontFamily = 'Inter';

  static TextStyle get headlineXl => GoogleFonts.inter(
        fontSize: 40,
        fontWeight: FontWeight.w700,
        height: 48 / 40,
        letterSpacing: -0.02 * 40,
      );

  static TextStyle get headlineLg => GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        height: 40 / 32,
        letterSpacing: -0.02 * 32,
      );

  static TextStyle get headlineLgMobile => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
      );

  static TextStyle get headlineMd => GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 28 / 20,
      );

  static TextStyle get bodyLg => GoogleFonts.inter(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 28 / 18,
      );

  static TextStyle get bodyMd => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      );

  static TextStyle get bodySm => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
      );

  static TextStyle get labelMd => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 16 / 14,
        letterSpacing: 0.05 * 14,
      );

  static TextStyle get ticketCode => GoogleFonts.inter(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 24 / 24,
        letterSpacing: 0.1 * 24,
      );

  static TextTheme get textTheme => TextTheme(
        displayLarge: headlineXl,
        displayMedium: headlineLg,
        displaySmall: headlineMd,
        headlineLarge: headlineLg,
        headlineMedium: headlineMd,
        headlineSmall: headlineLgMobile,
        titleLarge: headlineMd,
        titleMedium: bodyLg,
        titleSmall: bodyMd,
        bodyLarge: bodyLg,
        bodyMedium: bodyMd,
        bodySmall: bodySm,
        labelLarge: labelMd,
        labelMedium: bodySm,
        labelSmall: bodySm,
      );
}
