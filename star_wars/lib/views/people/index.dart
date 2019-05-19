import 'package:flutter/material.dart';
import 'package:star_wars/views/people/components/body.dart';

class PeopleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People"),
      ),
      body: Body(),
    );
  }
}
