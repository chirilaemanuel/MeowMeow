import 'package:flutter/material.dart';
import 'package:meow_meow/assets/config/theme/themes.dart';
import 'package:meow_meow/pages/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String listTitle = "Meow Meow List";

  //this api returns a list of facts
  static const String itemsApiLink = "https://catfact.ninja/facts";
  static const int itemsMaxLength = 100; //maximum length of returned fact
  static const int itemsLimit = 15; //limit the amount of results returned

  //this api returns pictures of kittens (gallery with 15 images -> ?image=15)
  static const String imagesApiLink = "https://placekitten.com";
  static const int imagesWidth = 300;
  static const int imagesHeight = 300;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meow Meow',
      theme: Themes.customLightTheme(),
      darkTheme: Themes.customDarkTheme(),
      themeMode: ThemeMode.system,
      home: const MyHomePage(
        title: listTitle,
        itemsApiLink: '$itemsApiLink?max_length=$itemsMaxLength&limit=$itemsLimit',
        imagesApiLink: '$itemsApiLink/$imagesWidth/$imagesHeight', //
      ),
    );
  }
}


