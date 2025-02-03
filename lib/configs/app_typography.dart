import 'package:flutter/material.dart';
import 'package:g_drive/configs/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static TextStyle normalRegular({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 16,
      letterSpacing: -0.24,
      height: 1.2,
      color: color ?? AppTheme.text1,
    );
  }

  static TextStyle smallRegular({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400, // Regular
      letterSpacing: -0.24,
      height: 1.2,
      color: color ?? AppTheme.text1,
    );
  }

  static TextStyle normalSemiBold({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w600, // SemiBold
      letterSpacing: -0.24,
      color: color ?? AppTheme.text1,
    );
  }

  static TextStyle largeSemiBold({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600, // SemiBold
      letterSpacing: -0.24,
      color: color ?? AppTheme.text1,
    );
  }

  static TextStyle normalMedium({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500, // Medium
      letterSpacing: -0.24,
      height: 1.2,
      color: color ?? AppTheme.text1,
    );
  }

  static TextStyle mediumSemiBold({Color? color}) {
    return GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600, // SemiBold
      letterSpacing: -0.24,
      color: color ?? AppTheme.text1,
    );
  }

  /// Custom text style with flexible properties
  static TextStyle custom({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    double letterSpacing = -0.24,
    double height = 1.5,
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      color: color ?? AppTheme.text1,
    );
  }
}
