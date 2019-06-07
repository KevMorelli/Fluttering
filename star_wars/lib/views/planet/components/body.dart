import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/providers/planet_provider.dart';
import 'package:animator/animator.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final planetProvider = Provider.of<PlanetProvider>(context);

    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Collapsing Toolbar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 25.0),
                    child: Text('Climate'),
                  ),
                  Flexible(
                      child: Text(
                    planetProvider.getPlanet().climate,
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
                    planetProvider.getPlanet().diameter,
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
                      planetProvider.getPlanet().gravity,
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
                      planetProvider.getPlanet().terrain,
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
                      planetProvider.getPlanet().population,
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
                          planetProvider.destroyPlanet(context);
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
    );
  }
}
