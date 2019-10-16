import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:star_wars/core/models/people.dart';
import 'package:star_wars/core/models/person.dart';
import 'package:star_wars/core/services/api.dart';

class PeopleService {
  Api _api;

  PeopleService({@required Api api}) {
    _api = api;
  }

  Future<List<Person>> fetchData() async {
    return await _api.fetchPeople().then((result) {
      Map<String, dynamic> people = jsonDecode(result);
      var data = People.fromJson(people);

      return data.people;
    });
  }
}
