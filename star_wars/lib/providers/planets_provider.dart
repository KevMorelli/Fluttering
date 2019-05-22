import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:star_wars/models/planet.dart';
import 'package:star_wars/models/planets.dart';
import 'package:star_wars/services/api_service.dart';
import 'package:star_wars/views/planet/index.dart';

class PlanetsProvider with ChangeNotifier {
  List<Planet> _planets;
  bool isLoading = false;

  PlanetsProvider() {
    _planets = List<Planet>();

    fetchData();
  }

  List<Planet> getPlanets() => _planets;

  Planet getPlanet(int index) => _planets[index];

  int getTotal() => _planets.length;

  void removePlanet(int index) => _planets.removeAt(index);

  Future<void> fetchData() async {
    isLoading = true;
    notifyListeners();

    ApiService().fetchPlanets().then((result) {
      Map<String, dynamic> planets = jsonDecode(result);
      var data = Planets.fromJson(planets);

      _planets = data.planets;
      isLoading = false;

      notifyListeners();
    });
  }

  void navigateToPlanetInfo(int index, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PlanetView(getPlanet(index)),
        )).then((delete) {
      if (delete != null && delete) {
        removePlanet(index);

        notifyListeners();
      }
    });
  }
}
