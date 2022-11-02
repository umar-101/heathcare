import 'package:flutter/material.dart';
import 'package:routine_app/config/constants.dart';
import 'package:routine_app/screens/Dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: const TextTheme(
            headline1:
                TextStyle(color: kHeadingColor, fontWeight: FontWeight.w700),
            headline2: TextStyle(
              color: kHeadingColor,
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
            headline3: TextStyle(
                color: kHeadingColor,
                fontSize: 20,
                fontWeight: FontWeight.w700),
            headline4: TextStyle(
                color: kHeadingColor,
                fontSize: 16,
                fontWeight: FontWeight.w700),
            subtitle1: TextStyle(color: kHeadingColor, fontSize: 12),
            subtitle2: TextStyle(
                color: kHeadingColor,
                fontSize: 14,
                fontWeight: FontWeight.w700),
          )),
      home: const DashboardScreen(),
    );
  }
}
