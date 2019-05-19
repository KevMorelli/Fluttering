import 'package:flutter/material.dart';
import 'package:star_wars/views/planet/index.dart';
import 'package:star_wars/theme/style.dart';
import 'package:star_wars/views/planets/index.dart';
import 'package:star_wars/views/people/index.dart';

void main() {
  runApp(StarWars());
}

class StarWars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars',
      theme: appTheme(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => PlanetsView(),
        "/people": (BuildContext context) => PeopleView(),
        "/planet": (BuildContext context) => PlanetView(),
      },
    );
  }
}
