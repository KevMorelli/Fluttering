import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:star_wars/core/models/planet.dart';
import 'package:star_wars/core/viewmodels/planet_viewmodel.dart';
import 'package:star_wars/ui/shared/app_colors.dart';
import 'package:star_wars/ui/views/base_widget.dart';

class PlanetView extends StatelessWidget {
  final Planet planet;
  const PlanetView({Key key, this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<PlanetViewModel>(
      model: PlanetViewModel(planet),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text("Planet Info"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  constraints: new BoxConstraints.expand(
                    height: 280.0,
                  ),
                  alignment: Alignment.bottomLeft,
                  padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/planet_header.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: new Text(viewModel.planet.name,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 36.0,
                          color: Color(0xffff0000))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 20.0, bottom: 20.0, right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('Climate'),
                      ),
                      Flexible(
                          child: Text(
                        viewModel.planet.climate,
                        overflow: TextOverflow.ellipsis,
                      ))
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff2c2c2c),
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 20.0, bottom: 20.0, right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('Diameter'),
                      ),
                      Flexible(
                          child: Text(
                        viewModel.planet.diameter,
                        overflow: TextOverflow.ellipsis,
                      ))
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff2c2c2c),
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 20.0, bottom: 20.0, right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('Gravity'),
                      ),
                      Flexible(
                        child: Text(
                          viewModel.planet.gravity,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff2c2c2c),
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 20.0, bottom: 20.0, right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('Terrain'),
                      ),
                      Flexible(
                        child: Text(
                          viewModel.planet.terrain,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff2c2c2c),
                  height: 3.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 20.0, bottom: 20.0, right: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Text('Population'),
                      ),
                      Flexible(
                        child: Text(
                          viewModel.planet.population,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Color(0xff2c2c2c),
                  height: 3.0,
                ),
                Animator(
                  repeats: 0,
                  cycles: 0,
                  tween: Tween<double>(begin: -10, end: 10),
                  duration: Duration(milliseconds: 500),
                  curve: Curves.linear,
                  builder: (anim) => Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SizedBox(
                      height: 65.0 + anim.value / 2,
                      width: 200.0 + anim.value,
                      child: RaisedButton(
                        onPressed: () {
                          viewModel.destroyPlanet(context);
                        },
                        child: Text(
                          'DESTROY',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        color: Color(0xffff0000),
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
