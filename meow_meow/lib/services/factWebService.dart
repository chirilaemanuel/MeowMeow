import 'dart:convert';
import 'package:meow_meow/models/factModel.dart';
import 'package:http/http.dart' as http;

class FactWebService {

  Future<List<Fact>> fetchFactsAPI(String factsApiLink) async {

    final response = await http.get(Uri.parse(factsApiLink));

    if(response.statusCode == 200) {

      final body = jsonDecode(response.body);
      final Iterable json = body["data"];

      return json.map((fact) => Fact.fromJson(fact)).toList();

    } else {
      throw Exception("Unable to perform request!");
    }

  }

}