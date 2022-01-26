import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meow_meow/view_model/factListViewModel.dart';
import 'package:meow_meow/widgets/factList.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {

  final String title;
  final String factsApiLink;
  final String imagesApiLink;

  const MyHomePage({Key? key, required this.title, required this.factsApiLink, required this.imagesApiLink}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();

    Provider.of<FactListViewModel>(context, listen: false).fetchFacts(widget.factsApiLink);
  }

  @override
  Widget build(BuildContext context) {

    if (kDebugMode) {
      print("FACT API LINK: "+widget.factsApiLink);
      print("IMAGE LINK: "+widget.imagesApiLink);
    }

    final vm = Provider.of<FactListViewModel>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        //EFFETTO STONDATO ANGOLI BASSI APPBAR
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(5),
          ),
        ),
      ),

      body: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text("API: " + widget.factsApiLink),
            ),
            Expanded(
                child: FactList(facts: vm.facts, imagesApiLink: widget.imagesApiLink,))
          ])
      )

    );
  }
}