import 'package:flutter/material.dart';
import 'package:star_wars/views/people/index.dart';
import 'package:star_wars/views/planets/index.dart';

class AppDrawer extends Drawer {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Darth Vader'),
            accountEmail: Text(''),
            currentAccountPicture:
                CircleAvatar(backgroundImage: AssetImage('assets/profile.png')),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu_header_background.png'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    'assets/icons/planet.png',
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Target: Planets',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PlanetsView()));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              color: Colors.grey,
              height: 1.0,
            ),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    'assets/icons/people.png',
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Target: People',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PeopleView()));
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              color: Colors.grey,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
