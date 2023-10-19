import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle montserratTextStyle({required Color color}) {
    return GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.w800,
      color: color,
    );
  }

  static TextStyle headingTextStyle({
    double fontSize = 36,
    Color color = Colors.white,
  }) {
    return GoogleFonts.rubikMoonrocks(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
      color: color,
    );
  }

  static TextStyle normalTextStyle() {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      letterSpacing: 1.5,
      color: Colors.white,
    );
  }
}
