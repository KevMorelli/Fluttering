import 'package:flutter/material.dart';
import 'package:star_wars/core/constants/app_constants.dart';
import 'package:star_wars/core/models/person.dart';
import 'package:star_wars/core/services/people_service.dart';
import 'package:star_wars/core/viewmodels/base_model.dart';

class PeopleViewModel extends BaseModel {
  List<Person> people;
  PeopleService _peopleService;

  PeopleViewModel({@required PeopleService peopleService}) {
    this._peopleService = peopleService;
    people = List<Person>();
    fetchData();
  }

  Future<void> fetchData() async {
    setBusy(true);

    await _peopleService.fetchData().then((result) {
      people = result;
      setBusy(false);
      notifyListeners();
    });
  }

  void navigateToPersonInfo(int index, BuildContext context) {
    Navigator.pushNamed(context, RoutePaths.Person, arguments: people[index])
        .then((delete) {
      if (delete != null && delete) {
        people.removeAt(index);
        notifyListeners();
      }
    });
  }
}
