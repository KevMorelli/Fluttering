import 'package:flutter/material.dart';
import 'package:star_wars/models/planet.dart';
import 'package:star_wars/views/destroy/index.dart';

class PlanetProvider with ChangeNotifier {
  Planet _planet;

  PlanetProvider(this._planet);

  Planet getPlanet() => _planet;

  destroyPlanet(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DestroyView('assets/animations/planet_destroy.json'),
        )).then((_) {
      Navigator.pop(context, true);
    });
  }
}
