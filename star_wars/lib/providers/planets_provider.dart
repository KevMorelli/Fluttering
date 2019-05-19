import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:star_wars/models/planet.dart';
import 'package:star_wars/models/planets.dart';
import 'package:star_wars/services/api_service.dart';

class PlanetsProvider with ChangeNotifier {
  List<Planet> _planets;

  PlanetsProvider() {
    fetchData();
  }

  List<Planet> getPlanets() => _planets;

  void fetchData() {
    ApiService().fetchPlanets().then((result) {
      Map<String, dynamic> planets = jsonDecode(result);
      var data = Planets.fromJson(planets);

      _planets = data.planets;

      notifyListeners();
    });
  }
}
