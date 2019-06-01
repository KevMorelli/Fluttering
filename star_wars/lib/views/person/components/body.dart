import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:animator/animator.dart';
import 'package:star_wars/providers/person_provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final personProvider = Provider.of<PersonProvider>(context);

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
                  image: new AssetImage('assets/person_header.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Text(personProvider.getPerson().name,
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
                    child: Text('Height'),
                  ),
                  Flexible(
                      child: Text(
                    personProvider.getPerson().height,
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
                    child: Text('Mass'),
                  ),
                  Flexible(
                      child: Text(
                    personProvider.getPerson().mass,
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
                    child: Text('Gender'),
                  ),
                  Flexible(
                    child: Text(
                      personProvider.getPerson().gender,
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
                          personProvider.destroyPerson(context);
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
