import 'package:flutter/material.dart';

class ThemeChanger {
  static Color primary = const Color(0xFF2b134f);
  static Color secondary = const Color(0xFFf0affa);
  static Color black = const Color(0xFF000000);
  static Color white = const Color(0xFFffffff);
  static Color transparent = const Color(0x0000ffff);
  final ThemeData themeDark = ThemeData();
  final ThemeData themeLight = ThemeData(
      disabledColor: Colors.grey,
      colorScheme: ColorScheme(
        primary: primary,
        secondary: secondary,
        surface: white,
        background: transparent,
        onPrimary: white,
        onSecondary: white,
        onSurface: black,
        brightness: Brightness.light,
        error: Colors.red,
        onBackground: primary,
        onError: Colors.black,
        primaryVariant: primary,
        secondaryVariant: secondary,
      ));
  ThemeData? _themeData;

  ThemeChanger() {
    _themeData = themeLight;
  }

  getTheme() => _themeData;
}
