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
            accountEmail: new Text(''),
            currentAccountPicture: new CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png')),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu_header_background.png'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: new Text(
              'Target: Planets',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => PlanetsView()));
            },
          ),
          Container(
            color: Colors.grey,
            height: 1.0,
          ),
          ListTile(
            title: new Text(
              'Target: People',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => PlanetsView()));
            },
          ),
          Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
