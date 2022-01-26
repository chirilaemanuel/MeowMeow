import 'dart:convert';
import 'package:meow_meow/models/factModel.dart';
import 'package:http/http.dart' as http;

class FactWebService {

  Future<List<Fact>> fetchFacts(String factsApiLink) async {

    final response = await http.get(Uri.parse(factsApiLink));

    if(response.statusCode == 200) {

      final body = jsonDecode(response.body);
      final Iterable json = body["data"];

      return json.map((fact) => Fact.fromJson(fact)).toList();

    } else { //TODO:fare case select con più status code
      throw Exception("Unable to perform request!");
    }

  }

}