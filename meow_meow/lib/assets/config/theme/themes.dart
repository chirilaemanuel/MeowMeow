import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meow_meow/assets/config/theme/colorPalette.dart';

class Themes {

  static  ThemeData customLightTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      platform: TargetPlatform.android,
      brightness: Brightness.light,
      primaryColor: ColorPalette.blueLight,
      cardColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch(
          primarySwatch: ColorPalette.blueLight
      ),
      appBarTheme: const AppBarTheme(
        color: ColorPalette.blueLight,
      ),

      textTheme: TextTheme(
        ///TITOLO APPBAR
        headline6: TextStyle(
          fontSize: 30.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('MedievalSharp').fontFamily,
          color: Colors.white,
        ),
        ///TOTOLO LISTA HORIZONTALE
        headline4: TextStyle(
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('MedievalSharp').fontFamily,
          color: ColorPalette.blueLight,
        ),
        ///TOTOLO ELEMENTO LISTA HORIZONTALE
        subtitle1: TextStyle(
          fontSize: 18.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('Yatra One').fontFamily,
          color: Colors.white,
        ),
      ),
    );
  }

  static  ThemeData customDarkTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      platform: TargetPlatform.android,
      brightness: Brightness.dark,
      primaryColor: Colors.yellow,
      cardColor: Colors.white,
      //scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: ColorPalette.blueDark
      ),
      appBarTheme: const AppBarTheme(
        color: ColorPalette.blueDark,
      ),

      textTheme: TextTheme(
        ///TITOLO APPBAR
        headline6: TextStyle(
          fontSize: 30.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('MedievalSharp').fontFamily,
          color: Colors.black,
        ),
        ///TOTOLO LISTA HORIZONTALE
        headline4: TextStyle(
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('MedievalSharp').fontFamily,
          color: ColorPalette.blueLight,
        ),
        ///TOTOLO ELEMENTO LISTA HORIZONTALE
        subtitle1: TextStyle(
          fontSize: 18.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('Yatra One').fontFamily,
          color: Colors.black,
        ),
      ),
    );
  }

}