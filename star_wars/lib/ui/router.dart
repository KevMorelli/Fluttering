import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:star_wars/core/constants/app_constants.dart';
import 'package:star_wars/core/models/planet.dart';
import 'package:star_wars/ui/views/destroy_view.dart';
import 'package:star_wars/ui/views/people_view.dart';
import 'package:star_wars/ui/views/planet_view.dart';
import 'package:star_wars/ui/views/planets_view.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Planets:
        return MaterialPageRoute(builder: (_) => PlanetsView());
      case RoutePaths.People:
        return MaterialPageRoute(builder: (_) => PeopleView());
      case RoutePaths.Planet:
        var planet = settings.arguments as Planet;
        return MaterialPageRoute(builder: (_) => PlanetView(planet: planet));
      case RoutePaths.Destroy:
        var animation = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => DestroyView(animation));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
