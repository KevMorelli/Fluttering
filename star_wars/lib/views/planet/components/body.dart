import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/providers/planet_provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final planetProvider = Provider.of<PlanetProvider>(context);

    return SingleChildScrollView(
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
              child: new Text(planetProvider.getPlanet().name,
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
                  Text('Climate'),
                  Text(planetProvider.getPlanet().climate)
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
                  Text('Diameter'),
                  Text(planetProvider.getPlanet().diameter)
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
                  Text('Gravity'),
                  Text(planetProvider.getPlanet().gravity)
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
                  Text('Terrain'),
                  Text(planetProvider.getPlanet().terrain)
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
                  Text('Population'),
                  Text(planetProvider.getPlanet().population)
                ],
              ),
            ),
            Container(
              color: Color(0xff2c2c2c),
              height: 3.0,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: SizedBox(
                height: 65.0,
                width: 200.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'DESTROY',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  color: Color(0xffff0000),
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//planetProvider.getPlanet().population
