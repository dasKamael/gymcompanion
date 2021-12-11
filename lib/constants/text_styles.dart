import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymcompanion/constants/colors.dart';

class ConstTextStyles {
  static TextStyle headerFont = GoogleFonts.barlow();

  static final header1 = TextStyle(
    fontSize: 24.0,
    color: ConstColors.secondaryColor,
    fontFamily: headerFont.fontFamily,
  );
}
