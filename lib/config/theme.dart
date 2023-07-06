import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0xffffe142),
    backgroundColor: const Color(0xffffe142),
    scaffoldBackgroundColor: const Color(0xffffe142),
    // fontFamily: 'Ledger',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Color(0xff000000),
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      headlineMedium: TextStyle(
        color: Color(0xff000000),
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
      headlineSmall: TextStyle(
        color: Color(0xff000000),
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      bodyLarge: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 15,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
      ),
      displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        color: Color(0xff000000),
        // fontFamily: 'Ledger',
        fontSize: 140,
      ),
    ),
  );
}
