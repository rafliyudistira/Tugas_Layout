import 'package:flutter/material.dart';
import 'page/home/home.dart';
import 'package:instagram/page/home/story.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white, foregroundColor: Colors.black),
  brightness: Brightness.light,
);

ThemeData darktTheme = ThemeData(
  brightness: Brightness.dark,
);

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool isDark = true;
  bool darkMode = false;
  bool iconMode = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: iconMode ? darktTheme : lightTheme,
      home: MyHomePage(
        darkMode: darkMode,
        themeValue: isDark,
        themeChangedCallback: () {
          setState(() {
            isDark = !isDark;
            darkMode = !darkMode;
            iconMode = !iconMode;
            colorMode = !colorMode;
          });
        },
      ),
    );
  }
}
