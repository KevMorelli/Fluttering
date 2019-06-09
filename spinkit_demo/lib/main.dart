import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpinKit Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SpinKit Demo"),
        ),
        backgroundColor: Colors.grey[800],
        body: ListView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Rotating Circle'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitRotatingCircle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Rotating Plain'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitRotatingPlain(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Chasing Dots'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitChasingDots(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Pumping Heart'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitPumpingHeart(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Pulse'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitPulse(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Double Bounce'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitDoubleBounce(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Wave Start'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitWave(
                      color: Colors.white,
                      type: SpinKitWaveType.start,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Wave Center'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitWave(
                      color: Colors.white,
                      type: SpinKitWaveType.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Wave End'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitWave(
                      color: Colors.white,
                      type: SpinKitWaveType.end,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Three Bounce'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitThreeBounce(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Wandering Cubes'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitWanderingCubes(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Wandering Cirles'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitWanderingCubes(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Circle'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitCircle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Fading Four'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitFadingFour(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Fading Four Cubes'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitFadingFour(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Fading Cube'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: SpinKitFadingCube(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Cube Grid'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitCubeGrid(
                      size: 51.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Folding Cube'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitFoldingCube(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Ring'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitRing(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Dual Ring'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitDualRing(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Ripple'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitRipple(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Fading Grid'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitFadingGrid(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Cube Fading Grid'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitFadingGrid(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Hour Glass'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitHourGlass(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Spinning Circle'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitSpinningCircle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Spinning Cube'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitSpinningCircle(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Fading Circle'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitFadingCircle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 2.0,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Pouring Hour Glass'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SpinKitPouringHourglass(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
