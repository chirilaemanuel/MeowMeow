import 'package:flutter/material.dart';
import 'package:meow_meow/assets/config/theme/colorPalette.dart';
import 'package:meow_meow/view_model/factListViewModel.dart';

class FactList extends StatefulWidget {

  final List<FactViewModel> facts;
  final String imagesApiLink;

  const FactList({Key? key, required this.facts, required this.imagesApiLink}) : super(key: key);

  @override
  State<FactList> createState() => _FactListState();
}

class _FactListState extends State<FactList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.facts.length,
      itemBuilder: (context, index) {

        final fact = widget.facts[index];

        double screenWidth = MediaQuery.of(context).size.width;

        return Card(
          color: ColorPalette.blueLight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(5),),
              SizedBox(
                height: screenWidth,
                width: screenWidth,
                child:
                Image.network(
                  widget.imagesApiLink + fact.imageNr.toString(),
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
              const Padding(padding: EdgeInsets.all(5),),
              Text(fact.title,
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const Padding(padding: EdgeInsets.all(5),),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.all(5),
        );
      },
    );
  }
}