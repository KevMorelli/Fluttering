import 'package:flutter/material.dart';
import 'package:star_wars/core/constants/app_assets.dart';
import 'package:star_wars/core/constants/app_constants.dart';

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
                CircleAvatar(backgroundImage: AssetImage(Assets.ProfileImage)),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.MenuHeaderBackgroundImage),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset(
                    Assets.PlanetIconImage,
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
              Navigator.pushNamed(context, RoutePaths.Planets);
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
                    Assets.PersonIconImage,
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
              Navigator.pushNamed(context, RoutePaths.People);
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
