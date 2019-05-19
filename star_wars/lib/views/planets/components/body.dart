import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/providers/planets_provider.dart';
import 'package:star_wars/views/planets/components/planet_list_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final planetsProvider = Provider.of<PlanetsProvider>(context);

    if (planetsProvider.getPlanets() == null) {
      return Container();
    }

    return Center(
      child: ListView.builder(
        itemCount: planetsProvider.getPlanets().length,
        itemBuilder: (BuildContext context, int position) {
          return PlanetListItem(planetsProvider.getPlanets()[position].name);
        },
      ),
    );
  }
}
