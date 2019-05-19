import 'package:flutter/material.dart';
import 'package:star_wars/components/drawer.dart';
import 'package:star_wars/providers/planets_provider.dart';
import 'package:star_wars/views/planets/components/body.dart';
import 'package:provider/provider.dart';

class PlanetsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PlanetsProvider>(
      builder: (_) => PlanetsProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Planets"),
        ),
        body: Body(),
        drawer: AppDrawer(),
      ),
    );
  }
}
