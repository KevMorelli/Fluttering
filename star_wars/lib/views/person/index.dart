import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/models/person.dart';
import 'package:star_wars/providers/person_provider.dart';
import 'package:star_wars/views/person/components/body.dart';

class PersonView extends StatelessWidget {
  final Person _person;

  PersonView(this._person);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PersonProvider>(
      builder: (_) => PersonProvider(_person),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Person Info"),
        ),
        body: Body(),
      ),
    );
  }
}
