import 'package:flutter/material.dart';
import 'package:star_wars/views/planet/components/body.dart';

class PlanetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planet Info"),
      ),
      body: Body(),
    );
  }
}
