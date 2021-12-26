import 'package:flutter/material.dart';
import 'package:gymcompanion/constants/colors.dart';

class ConstDarkTheme {
  static ThemeData darkTheme = ThemeData(
    primaryColor: ConstColors.primaryColor,
    primaryColorLight: ConstColors.primaryColor,
    errorColor: ConstColors.error,
    canvasColor: ConstColors.primaryColor,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: ConstColors.textColor),
    ),
  );
}
