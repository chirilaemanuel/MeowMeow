import 'package:flutter/material.dart';

class ColorPalette {

  //tool: https://maketintsandshades.com/

  static const MaterialColor blueLight = MaterialColor(
    0xff69b6ff, //0%
    <int, Color>{
      50: Color(0xff5fa4e6), //10%
      100: Color(0xff5492cc), //20%
      200: Color(0xff4a7fb3), //30%
      300: Color(0xff3f6d99), //40%
      400: Color(0xff355b80), //50%
      500: Color(0xff2a4966), //60%
      600: Color(0xff1f374c), //70%
      700: Color(0xff152433), //80%
      800: Color(0xff0a1219), //90%
      900: Color(0xff000000), //100%
    },
  );

  static const MaterialColor blueDark = MaterialColor(
    0xff005bb2, //0%
    <int, Color>{
      50: Color(0xff0052a0), //10%
      100: Color(0xff00498e), //20%
      200: Color(0xff00407d), //30%
      300: Color(0xff00376b), //40%
      400: Color(0xff002e59), //50%
      500: Color(0xff002447), //60%
      600: Color(0xff001b35), //70%
      700: Color(0xff001224), //80%
      800: Color(0xff000912), //90%
      900: Color(0xff000000), //100%
    },
  );
}