import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  final String title;
  final String itemsApiLink;
  final String imagesApiLink;

  const MyHomePage({Key? key, required this.title, required this.itemsApiLink, required this.imagesApiLink}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'HOME',
            ),
          ],
        ),
      ),
    );
  }
}