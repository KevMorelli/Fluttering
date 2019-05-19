import 'package:flutter/material.dart';
import 'package:star_wars/views/planets/index.dart';

class AppDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text('Darth Vader'),
            accountEmail: new Text('sdfsdf'),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://cdn.tookapic.com/photos/2015/336/0/8/08819008d32e12f896973e98b7d8930a.jpg?h=300&q=85&sharp=3&s=f572b4516d84aa9aa27a975f714ac9e2'),
            ),
          ),
          new ListTile(
            title: new Text('About Page'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => PlanetsView()));
            },
          ),
        ],
      ),
    );
  }
}