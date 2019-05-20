import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/models/planet.dart';
import 'package:star_wars/providers/planet_provider.dart';
import 'package:star_wars/views/planet/components/body.dart';

class PlanetView extends StatelessWidget {
  final Planet _planet;

  PlanetView(this._planet);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PlanetProvider>(
      builder: (_) => PlanetProvider(_planet),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Planet Info"),
        ),
        body: Body(),
      ),
    );
  }
}
