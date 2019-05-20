import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/components/loading_indicator.dart';
import 'package:star_wars/providers/planets_provider.dart';
import 'package:star_wars/views/planets/components/planet_list_item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final planetsProvider = Provider.of<PlanetsProvider>(context);

    if (planetsProvider.getPlanets() == null) {
      return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: LoadingIndicator());
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
      child: Center(
        child: ListView.separated(
          itemCount: planetsProvider.getPlanets().length,
          itemBuilder: (BuildContext context, int position) {
            return PlanetListItem(planetsProvider.getPlanets()[position]);
          },
          separatorBuilder: (BuildContext context, int index) => Container(
                color: Color(0xff2c2c2c),
                height: 3.0,
              ),
        ),
      ),
    );
  }
}
