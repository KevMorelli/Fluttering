import 'package:flutter/material.dart';
import 'package:star_wars/models/person.dart';
import 'package:star_wars/views/destroy/index.dart';

class PersonProvider with ChangeNotifier {
  Person _person;

  PersonProvider(this._person);

  Person getPerson() => _person;

  destroyPerson(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              DestroyView('assets/animations/person_destroy.json'),
        )).then((_) {
      Navigator.pop(context, true);
    });
  }
}
