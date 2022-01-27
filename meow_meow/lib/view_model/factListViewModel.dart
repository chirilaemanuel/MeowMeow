import 'package:flutter/foundation.dart';
import 'package:meow_meow/models/factModel.dart';
import 'package:meow_meow/services/factWebService.dart';

class FactListViewModel extends ChangeNotifier {

  List<FactViewModel> facts = [];

  Future<void> fetchFacts(String factsApiLink) async {

    //fetch dei dati
    final results =  await FactWebService().fetchFactsAPI(factsApiLink);
    facts = results.map((item) => FactViewModel(fact: item)).toList();

    if (kDebugMode) {
      print(facts);
    }

    notifyListeners();

  }

}

class FactViewModel{

  final Fact fact;

  FactViewModel({required this.fact});

  String get title {
    return fact.title;
  }
  int get length {
    return fact.length;
  }
  int get imageNr {
    return fact.imageNr;
  }

}

