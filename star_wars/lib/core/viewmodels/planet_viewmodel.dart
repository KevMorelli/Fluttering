import 'package:flutter/material.dart';
import 'package:star_wars/core/constants/app_animations.dart';
import 'package:star_wars/core/constants/app_constants.dart';
import 'package:star_wars/core/models/planet.dart';
import 'package:star_wars/core/viewmodels/base_model.dart';

class PlanetViewModel extends BaseModel {
  Planet planet;

  PlanetViewModel(this.planet);

  destroyPlanet(BuildContext context) {
    Navigator.pushNamed(context, RoutePaths.Destroy,
            arguments: Animations.DestroyPlanet)
        .then(
      (_) => {
        Navigator.pop(context, true),
      },
    );
  }
}
