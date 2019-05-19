import 'package:flutter/material.dart';

class PlanetListItem extends StatelessWidget {
  final String _title;

  PlanetListItem(this._title);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_title),
        onTap: () {
          Navigator.pushNamed(context, '/planet');
        },
      ),
    );
  }
}
