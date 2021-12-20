import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExcellenceTheme {
  static TextTheme textTheme = TextTheme(
    headline1: GoogleFonts.pacifico(color: Colors.black),
    bodyText1: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    ),
    headline2: GoogleFonts.openSans(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
    headline3: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
    headline4: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
    headline6: GoogleFonts.openSans(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  );
  static ThemeData lightThemeData() {
    return ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.orangeAccent,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.orangeAccent,
            foregroundColor: Colors.white),
        textTheme: textTheme);
  }
}
