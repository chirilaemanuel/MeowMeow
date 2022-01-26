//tool usato: https://javiercbk.github.io/json_to_dart/

import 'dart:math';

class Fact {

  final String title;
  final int length;
  final int imageNr;

  Fact({required this.title, required this.length, required this.imageNr});

  factory Fact.fromJson(Map<String, dynamic> json) {
    return Fact(
        title: json["Title"],
        length: json["Poster"],
        imageNr: Random().nextInt(15), //il numero lo genero random da 1 a 15
    );
  }

}
