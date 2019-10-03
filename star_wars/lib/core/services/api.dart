import 'dart:async';
import 'package:http/http.dart' as http;

class Api {
  static const endpoint = 'https://swapi.co/api';
  static const format = '/?format=json';

  var client = http.Client();

  Future<String> fetchPlanets() async {
    var response = await client.get(
      Uri.encodeFull(endpoint + "/planets" + format),
    );

    return response.body;
  }

  Future<String> fetchPeople() async {
    var response = await client.get(
      Uri.encodeFull(endpoint + "/people" + format),
    );

    return response.body;
  }
}
