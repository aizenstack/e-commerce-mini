import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lighTheme = ThemeData(
    primaryColor: Colors.blue, 

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
    ),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
      )
    )
  );
}