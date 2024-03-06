import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:home_screen/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      home: const HomeScreen(),
    );
  }
}
