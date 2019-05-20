import 'package:flutter/material.dart';
import 'package:star_wars/models/planet.dart';
import 'package:star_wars/views/planet/index.dart';

class PlanetListItem extends StatelessWidget {
  final Planet _planet;

  PlanetListItem(this._planet);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        title: Text(
          _planet.name,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlanetView(_planet),
              ));
        },
      ),
    );
  }
}
