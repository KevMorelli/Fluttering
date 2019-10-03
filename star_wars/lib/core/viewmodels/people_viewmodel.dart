import 'package:flutter/material.dart';
import 'package:star_wars/core/models/person.dart';
import 'package:star_wars/core/services/people_service.dart';
import 'package:star_wars/core/viewmodels/base_model.dart';

class PeopleViewModel extends BaseModel {
  PeopleService _peopleService;

  PeopleViewModel({@required PeopleService peopleService}) {
    _peopleService = peopleService;

    fetchData();
  }

  Future<void> fetchData() async {
    setBusy(true);

    await _peopleService.fetchData().then((_) {
      setBusy(false);
      notifyListeners();
    });
  }

  List<Person> getPeople() => _peopleService.getPeople();

  Person getPerson(int index) => _peopleService.getPerson(index);

  int getTotal() => _peopleService.getTotal();

  // void navigateToPlanetInfo(int index, BuildContext context) {
  //   Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => PlanetView(getPlanet(index)),
  //       )).then((delete) {
  //     if (delete != null && delete) {
  //       removePlanet(index);

  //       notifyListeners();
  //     }
  //   });
  // }
}
