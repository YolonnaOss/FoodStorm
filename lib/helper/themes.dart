import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    splashColor: Colors.transparent,
    dividerColor: Colors.white,
    primaryColor: const Color.fromRGBO(60, 180, 110, 1.0),
    cardColor: const Color.fromRGBO(60, 180, 110, 1.0),
    primaryColorLight: const Color.fromRGBO(18, 18, 29, 0.1),
    primaryColorDark: const Color.fromRGBO(18, 18, 29, 1.0),
    highlightColor: Colors.white,
    errorColor: Colors.red,
    primaryTextTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Color(0xff282828),
      ),
      headline5: TextStyle(
        color: Color(0xffF4F4F4),
      ),
      headline6: TextStyle(
        color: Color(0xffE7F0FE),
      ),
    ),
  );

  static final dark = ThemeData.dark().copyWith(
    splashColor: Colors.transparent,
    dividerColor: Colors.white,
    primaryColor: const Color.fromRGBO(60, 180, 110, 1.0),
    cardColor: const Color.fromRGBO(60, 180, 110, 1.0),
    primaryColorLight: const Color.fromRGBO(18, 18, 29, 0.1),
    primaryColorDark: const Color.fromRGBO(18, 18, 29, 1.0),
    highlightColor: Colors.white,
    errorColor: Colors.red,
    primaryTextTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Color(0xff282828),
      ),
      headline5: TextStyle(
        color: Color(0xffF4F4F4),
      ),
      headline6: TextStyle(
        color: Color(0xffE7F0FE),
      ),
    ),
  );
}
