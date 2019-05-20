import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: Color(0xff2c2c2c),
      accentColor: Colors.orange,
      hintColor: Colors.white,
      dividerColor: Colors.white,
      buttonColor: Colors.white,
      scaffoldBackgroundColor: Colors.black,
      canvasColor: Colors.grey,
      textTheme: TextTheme(
        body1: TextStyle(color: Colors.white, fontSize: 20),
      ));
}
