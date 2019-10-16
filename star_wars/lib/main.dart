import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_wars/core/constants/app_theme.dart';
import 'package:star_wars/provider_setup.dart';
import 'package:star_wars/ui/router.dart';
import 'core/constants/app_constants.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Star Wars',
        theme: appTheme(),
        initialRoute: RoutePaths.Planets,
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
