import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:routine_app/config/constants.dart';

ThemeData lighttheme() {
  return ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFFFFE177),
          onPrimary: kPrimaryColor,
          secondary: Color(0xFF251C5D),
          onSecondary: Color(0xFFFFF3C8),
          error: Colors.red,
          onError: Colors.green,
          background: kBarBackColor,
          onBackground: kBackgroundColor,
          surface: kHeadingColor,
          onSurface: kHeadingColor),
      brightness: Brightness.dark,
      primaryColor: const Color(0xFFFFE177),
      primaryColorDark: const Color(0xFFFFF3C8),
      primaryColorLight: const Color(0xFFFFF3C8),
      scaffoldBackgroundColor: kHeadingColor,
      textTheme: TextTheme(
        headline1: const TextStyle(
            color: kPrimaryColor, fontWeight: FontWeight.w700, fontSize: 42),
        headline2: const TextStyle(
          color: kPrimaryColor,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
        headline3: const TextStyle(
            color: kPrimaryColor, fontSize: 20, fontWeight: FontWeight.w700),
        headline4: const TextStyle(
            color: kPrimaryColor, fontSize: 16, fontWeight: FontWeight.w700),
        subtitle1: TextStyle(
            color: kPrimaryColor.withOpacity(0.6),
            fontSize: 12,
            fontWeight: FontWeight.w600),
      ));
}

ThemeData darktheme() {
  return ThemeData(
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color(0xFF251C5D),
          onPrimary: kPrimaryColor,
          secondary: Color(0xFFFFE177),
          onSecondary: Color(0xFFFFF3C8),
          error: Colors.red,
          onError: Colors.green,
          background: kHeadingColor,
          onBackground: kBackgroundColor,
          surface: kHeadingColor,
          onSurface: kHeadingColor),
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF251C5D),
      primaryColorDark: const Color(0xFF322389),
      primaryColorLight: const Color(0xFF4939A8),
      scaffoldBackgroundColor: kPrimaryColor,
      textTheme: TextTheme(
        headline1: const TextStyle(
            color: kHeadingColor, fontWeight: FontWeight.w700, fontSize: 42),
        headline2: const TextStyle(
          color: kHeadingColor,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
        headline3: const TextStyle(
            color: kHeadingColor, fontSize: 20, fontWeight: FontWeight.w700),
        headline4: const TextStyle(
            color: kHeadingColor, fontSize: 16, fontWeight: FontWeight.w700),
        subtitle1: TextStyle(
            color: kHeadingColor.withOpacity(0.6),
            fontSize: 12,
            fontWeight: FontWeight.w600),
      ));
}
