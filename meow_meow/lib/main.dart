import 'package:flutter/material.dart';
import 'package:meow_meow/assets/config/theme/themes.dart';
import 'package:meow_meow/pages/myHomePage.dart';
import 'package:meow_meow/view_model/factListViewModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String appTitle = "Meow Meow List";

  //this api returns a list of facts
  static const String factsApiLink = "https://catfact.ninja/facts";
  static const int factsMaxLength = 100; //maximum length of returned fact
  static const int factsLimit = 15; //limit the amount of results returned

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
        home:
        ChangeNotifierProvider(
          create: (context) => FactListViewModel(),
          child: const MyHomePage(
            title: appTitle,
            factsApiLink: '$factsApiLink?max_length=$factsMaxLength&limit=$factsLimit',
            imagesApiLink: '$imagesApiLink/$imagesWidth/$imagesHeight', //
          ),
        )
    );
  }
}


