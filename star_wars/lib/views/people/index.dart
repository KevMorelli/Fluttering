import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/components/drawer.dart';
import 'package:star_wars/providers/people_provider.dart';
import 'package:star_wars/views/people/components/body.dart';

class PeopleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PeopleProvider>(
      builder: (_) => PeopleProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("People"),
        ),
        body: Body(),
        drawer: AppDrawer(),
      ),
    );
  }
}
