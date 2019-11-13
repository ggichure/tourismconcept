import 'package:flutter/material.dart';

enum AppTheme { pinkdark, pinkBright, orionDark, centuriLight }

final appThemeData = {
  AppTheme.pinkBright: ThemeData(
      primaryColor: Colors.pink,
      accentColor: Colors.white,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
      buttonColor: Colors.pinkAccent,
      primarySwatch: Colors.pink),
  AppTheme.pinkdark: ThemeData(
      primaryColor: Colors.pink,
      accentColor: Colors.white,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
      buttonColor: Colors.pinkAccent,
      primarySwatch: Colors.pink),
  AppTheme.orionDark: ThemeData(
      primaryColor: Colors.teal,
      accentColor: Colors.white,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
      buttonColor: Colors.tealAccent,
      primarySwatch: Colors.teal),
  AppTheme.centuriLight: ThemeData(
      primaryColor: Colors.amberAccent,
      accentColor: Colors.white,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.white),
      buttonColor: Colors.amberAccent,
      primarySwatch: Colors.amber)
};
