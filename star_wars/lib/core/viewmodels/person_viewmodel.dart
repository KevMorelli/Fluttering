import 'package:flutter/material.dart';
import 'package:star_wars/core/constants/app_animations.dart';
import 'package:star_wars/core/constants/app_constants.dart';
import 'package:star_wars/core/models/person.dart';
import 'package:star_wars/core/viewmodels/base_model.dart';

class PersonViewModel extends BaseModel {
  Person person;

  PersonViewModel(this.person);

  destroyPerson(BuildContext context) {
    Navigator.pushNamed(context, RoutePaths.Destroy,
            arguments: Animations.DestroyPerson)
        .then(
      (_) => {
        Navigator.pop(context, true),
      },
    );
  }
}
