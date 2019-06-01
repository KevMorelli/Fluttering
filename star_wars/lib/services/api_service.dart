import 'dart:async';
import 'package:http/http.dart' as http;

class ApiService {
  Future<String> fetchPlanets() async {
    http.Response response = await http.get(
      Uri.encodeFull("https://swapi.co/api/planets/?format=json"),
    );

    return response.body;
  }

  Future<String> fetchPeople() async {
    http.Response response = await http.get(
      Uri.encodeFull("https://swapi.co/api/people/?format=json"),
    );

    return response.body;
  }
}
