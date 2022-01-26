import 'package:flutter/material.dart';
import 'package:meow_meow/view_model/factListViewModel.dart';

class FactList extends StatelessWidget {

  final List<FactViewModel> facts;
  final String imagesApiLink;

  const FactList({Key? key, required this.facts, required this.imagesApiLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: facts.length,
      itemBuilder: (context, index) {

        final fact = facts[index];

        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imagesApiLink + fact.imageNr.toString())
                ),
                borderRadius: BorderRadius.circular(6)
            ),
            width: 300,
            height: 300,
          ),
          title: Text(fact.title),
        );
      },
    );
  }
}