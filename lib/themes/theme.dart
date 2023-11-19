import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF31A062),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedLabelStyle: TextStyle(
      color: Color(0xFF31A05F),
    ),
    unselectedLabelStyle: TextStyle(
      color: Colors.black,
    ),
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.dmSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: GoogleFonts.dmSans(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
