import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTextStyle({Color color = Colors.white}) {
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle montserratTextStyle({required Color color, double fontSize = 24}) {
    return GoogleFonts.montserrat(
      fontSize: fontSize,
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

  static TextStyle normalTextStyle({Color color = Colors.white}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      letterSpacing: 1.5,
      color: color,
    );
  }

  static TextStyle confortaaStyle() {
    return GoogleFonts.contrailOne(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    );
  }
}
