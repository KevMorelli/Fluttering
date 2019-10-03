import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:star_wars/core/models/planet.dart';
import 'package:star_wars/core/models/planets.dart';
import 'package:star_wars/core/services/api.dart';

class PlanetsService {
  Api _api;

  PlanetsService({@required Api api}) {
    _api = api;
  }

  Future<List<Planet>> fetchData() async {
    return _api.fetchPlanets().then((result) {
      Map<String, dynamic> planets = jsonDecode(result);
      var data = Planets.fromJson(planets);

      return data.planets;
    });
  }
}
