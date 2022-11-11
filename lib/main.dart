import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:routine_app/providers/dark_theme_provider.dart';

import 'config/styles.dart';
import 'screens/Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return ThemeChanger();
      },
      child: Consumer<ThemeChanger>(
        builder: (BuildContext context, value, child) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            darkTheme: darktheme(),
            theme: lighttheme(),
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
