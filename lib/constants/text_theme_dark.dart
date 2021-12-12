import 'package:flutter/material.dart';
import 'package:gymcompanion/constants/colors.dart';

class ConstDarkTheme {
  static ThemeData darkTheme = ThemeData(
    primaryColor: ConstColors.primaryColor,
    primaryColorLight: ConstColors.primaryColor,
    errorColor: ConstColors.warn,
    canvasColor: ConstColors.primaryColor,
    textTheme: TextTheme(subtitle1: TextStyle(color: ConstColors.secondaryColor)),
  );
}
