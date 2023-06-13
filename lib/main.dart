import 'package:flutter/material.dart';
import 'package:login/ui/login.dart';
import 'package:login/ui/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData dark = AppThemes.darkTheme;
    ThemeData light = AppThemes.lightTheme;
    return MaterialApp(
      theme: isDarkTheme ? dark : light,
      home: LoginPage(isDarkTheme: isDarkTheme, toggleThemeCallback: toggleTheme),
    );
  }
}
