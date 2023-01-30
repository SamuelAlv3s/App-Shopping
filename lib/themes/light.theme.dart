import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);
const dangerColor = Color(0xFFFF0000);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(
      primary: primaryColor,
      secondary: lightColor,
    ),
    backgroundColor: backgroundColor,
    errorColor: dangerColor,
    textTheme: TextTheme(
        bodyText2: TextStyle(color: Colors.black38),
        button: TextStyle(color: Colors.green),
        headline5: TextStyle(color: Colors.green.shade900)),
  );
}
