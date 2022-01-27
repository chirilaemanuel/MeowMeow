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

    //carico il viewModel in fase di avvio
    Provider.of<FactListViewModel>(context, listen: false).fetchFacts(widget.factsApiLink);
  }

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<FactListViewModel>(context);
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
          child: Column(children: <Widget>[
            Expanded(
                child: FactList(facts: vm.facts, imagesApiLink: widget.imagesApiLink,)
            ),
          ])
      )

    );
  }
}