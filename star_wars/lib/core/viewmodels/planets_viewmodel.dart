import 'package:flutter/material.dart';
import 'package:star_wars/core/constants/app_constants.dart';
import 'package:star_wars/core/models/planet.dart';
import 'package:star_wars/core/services/planets_service.dart';
import 'package:star_wars/core/viewmodels/base_model.dart';

class PlanetsViewModel extends BaseModel {
  List<Planet> planets;
  PlanetsService _planetsService;

  PlanetsViewModel({@required PlanetsService planetsService}) {
    this._planetsService = planetsService;
    planets = List<Planet>();
    fetchData();
  }

  Future<void> fetchData() async {
    setBusy(true);

    await _planetsService.fetchData().then((result) {
      planets = result;
      setBusy(false);
      notifyListeners();
    });
  }

  void navigateToPlanetInfo(int index, BuildContext context) {
    Navigator.pushNamed(context, RoutePaths.Planet, arguments: planets[index])
        .then((delete) {
      if (delete != null && delete) {
        planets.removeAt(index);
        notifyListeners();
      }
    });
  }
}
