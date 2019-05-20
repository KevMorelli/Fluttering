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
                backgroundImage: AssetImage('assets/profile.png')),
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
