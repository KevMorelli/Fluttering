import 'package:animator/animator.dart';
import 'package:flutter/material.dart';
import 'package:star_wars/core/models/person.dart';
import 'package:star_wars/core/viewmodels/person_viewmodel.dart';
import 'package:star_wars/ui/shared/app_colors.dart';
import 'package:star_wars/ui/views/base_widget.dart';

class PersonView extends StatelessWidget {
  final Person person;
  const PersonView({Key key, this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget<PersonViewModel>(
      model: PersonViewModel(person),
      builder: (context, viewModel, child) => Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text("Person Info"),
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
                      image: new AssetImage('assets/person_header.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: new Text(viewModel.person.name,
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
                        viewModel.person.height,
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
                        viewModel.person.mass,
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
                          viewModel.person.gender,
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
                          viewModel.destroyPerson(context);
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
