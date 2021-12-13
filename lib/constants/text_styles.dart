import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymcompanion/constants/colors.dart';
import 'package:gymcompanion/constants/consts.dart';

class ConstTextStyles {
  // Fonts
  static TextStyle headerFont = GoogleFonts.barlow();
  static TextStyle textFieldFont = GoogleFonts.barlowCondensed();

  // Headers
  static final header1 = TextStyle(
    fontSize: 24.0,
    color: ConstColors.secondaryColor,
    fontFamily: headerFont.fontFamily,
  );

  // Subtle
  static final subtle16 = TextStyle(
    fontSize: 16.0,
    color: ConstColors.textFieldColor,
    fontFamily: headerFont.fontFamily,
  );

  // TextFields
  static final textField = TextStyle(
    fontSize: 20.0,
    color: ConstColors.secondaryColor,
    fontFamily: textFieldFont.fontFamily,
  );

  // InputDecorations
  static final defaultInput = InputDecoration(
    labelStyle: ConstTextStyles.textField,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(ConstValues.defaultTextFieldBorderRadius)),
      borderSide: BorderSide(
        color: ConstColors.secondaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(ConstValues.defaultTextFieldBorderRadius)),
      borderSide: BorderSide(
        color: ConstColors.textFieldColor,
      ),
    ),
  );
}
