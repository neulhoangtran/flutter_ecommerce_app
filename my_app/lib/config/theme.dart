import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Avinir',
      textTheme: textTheme());
}

TextTheme textTheme() {
  return const TextTheme(
      headline1: TextStyle(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
      headline2: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      headline3: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold));
}
