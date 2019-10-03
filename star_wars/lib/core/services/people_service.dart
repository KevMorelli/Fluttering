import 'dart:convert';
import 'package:star_wars/core/models/people.dart';
import 'package:star_wars/core/models/person.dart';
import 'package:star_wars/core/services/api.dart';

class PeopleService {
  final Api _api;
  List<Person> _people;

  PeopleService(this._api) {
    _people = List<Person>();
  }

  List<Person> getPeople() => _people;

  Person getPerson(int index) => _people[index];

  int getTotal() => _people.length;

  void removePerson(int index) => _people.removeAt(index);

  Future<void> fetchData() async {
    await _api.fetchPeople().then((result) {
      Map<String, dynamic> people = jsonDecode(result);
      var data = People.fromJson(people);

      _people = data.people;
    });
  }
}
