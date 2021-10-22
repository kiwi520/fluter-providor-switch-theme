import 'package:flutter/material.dart';

// class ThemeProvider with ChangeNotifier {
//   ThemeMode themeMode = ThemeMode.light;
//
//   bool  get isDarkMode  => themeMode == ThemeMode.dark;
//
//   void toggleTheme(bool isOn) {
//     themeMode = isOn? ThemeMode.dark : ThemeMode.light;
//     notifyListeners();
//   }
//
// }


class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.deepPurpleAccent,
      secondary: Colors.amber
    )
  );
  static ThemeData dark = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,
      colorScheme: ColorScheme.dark(
        primary: Colors.deepPurpleAccent,
        secondary: Colors.amber
      )
  );
}
