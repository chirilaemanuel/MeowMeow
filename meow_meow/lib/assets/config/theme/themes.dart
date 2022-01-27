import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meow_meow/assets/config/theme/colorPalette.dart';

//risorsa: https://www.didierboelens.com/2020/05/material-textstyle-texttheme/

class Themes {

  static  ThemeData customLightTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      platform: TargetPlatform.android,
      brightness: Brightness.light,
      primaryColor: ColorPalette.blueLight,
      cardColor: Colors.white,
      //scaffoldBackgroundColor: Colors.white,
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
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('Roboto').fontFamily,
          color: Colors.black,
        ),
        ///TITOLO ITEM
        subtitle1: TextStyle(
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontFamily: GoogleFonts.getFont('Roboto').fontFamily,
          color: Colors.black,
        ),
      ),
    );
  }

  static  ThemeData customDarkTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      platform: TargetPlatform.android,
      brightness: Brightness.dark,
      primaryColor: ColorPalette.blueDark,
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
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.getFont('Roboto').fontFamily,
          color: Colors.white,
        ),
        ///TITOLO ITEM
        subtitle1: TextStyle(
          fontSize: 20.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontFamily: GoogleFonts.getFont('Roboto').fontFamily,
          color: Colors.white,
        ),
      ),
    );
  }

}