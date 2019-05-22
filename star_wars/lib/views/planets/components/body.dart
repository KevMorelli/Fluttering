import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/components/loading_indicator.dart';
import 'package:star_wars/providers/planets_provider.dart';

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
          itemCount: planetsProvider.getTotal(),
          itemBuilder: (BuildContext context, int position) {
            return Card(
              elevation: 0,
              color: Colors.transparent,
              child: ListTile(
                title: Text(
                  planetsProvider.getPlanet(position).name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onTap: () =>
                    planetsProvider.navigateToPlanetInfo(position, context),
              ),
            );
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
