import 'package:flutter/material.dart';
import 'package:star_wars/models/planet.dart';

class PlanetProvider with ChangeNotifier {
  Planet _planet;

  PlanetProvider(this._planet);

  Planet getPlanet() => _planet;

  destroyPlanet(BuildContext context) {
    Navigator.pop(context, true);
  }
}
