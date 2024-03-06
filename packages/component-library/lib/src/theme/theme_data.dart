import 'package:flutter/material.dart';

part 'color_scheme.dart';

class MyThemeData {
  static get lightTheme => ThemeData(
        useMaterial3: true,
        colorScheme: _lightColorScheme,
      );

  static get darkTheme => ThemeData(
        useMaterial3: true,
        colorScheme: _darkColorScheme,
      );
}
