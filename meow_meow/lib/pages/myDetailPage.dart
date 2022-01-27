import 'package:flutter/material.dart';

class MyDetailPage extends StatelessWidget {

  final String title;
  final String imageNetworkLink;

  const MyDetailPage({Key? key, required this.title, required this.imageNetworkLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text("Detail"),
          //EFFETTO STONDATO ANGOLI BASSI APPBAR
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(5),
            ),
          ),
        ),

        body:SafeArea(
        child:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(5),),
              SizedBox(
                height: MediaQuery.of(context).size.shortestSide,
                //width: screenWidth,
                child:
                Image.network(
                  imageNetworkLink,
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
              Text(title,
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1,
                textAlign: TextAlign.center,

              ),
              const Padding(padding: EdgeInsets.all(5),),
            ],
          ),
        ),
    ),),
    );
  }
}
