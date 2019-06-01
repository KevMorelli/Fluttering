import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:star_wars/models/people.dart';
import 'package:star_wars/models/person.dart';
import 'package:star_wars/services/api_service.dart';
import 'package:star_wars/views/person/index.dart';

class PeopleProvider with ChangeNotifier {
  List<Person> _people;
  bool isLoading = false;

  PeopleProvider() {
    _people = List<Person>();

    fetchData();
  }

  List<Person> getPeople() => _people;

  Person getPerson(int index) => _people[index];

  int getTotal() => _people.length;

  void removePerson(int index) => _people.removeAt(index);

  Future<void> fetchData() async {
    isLoading = true;
    notifyListeners();

    ApiService().fetchPeople().then((result) {
      Map<String, dynamic> people = jsonDecode(result);
      var data = People.fromJson(people);

      _people = data.people;
      isLoading = false;

      notifyListeners();
    });
  }

  void navigateToPersonInfo(int index, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PersonView(getPerson(index)),
        )).then((delete) {
      if (delete != null && delete) {
        removePerson(index);

        notifyListeners();
      }
    });
  }
}
