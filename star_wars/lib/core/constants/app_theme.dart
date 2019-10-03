import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      primaryColor: Color(0xff2c2c2c),
      accentColor: Color(0xffff0000),
      hintColor: Colors.white,
      dividerColor: Colors.white,
      buttonColor: Colors.white,
      scaffoldBackgroundColor: Colors.black,
      canvasColor: Color(0xff2c2c2c),
      textTheme: TextTheme(
        body1: TextStyle(color: Colors.white, fontSize: 20),
      ));
}
