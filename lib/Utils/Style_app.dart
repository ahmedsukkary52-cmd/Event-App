import 'package:evently/Utils/color_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
class TextApp {
  static final TextStyle bold20Black = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: ColorApp.blackColor
  );
  static final TextStyle bold20White = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: ColorApp.whiteTextColor
  );
  static final TextStyle bold20Blue = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: ColorApp.primaryLight
  );
  static final TextStyle bold16Blue = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: ColorApp.primaryLight
  );
  static final TextStyle bold16Black = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: ColorApp.blackColor
  );
  static final TextStyle bold16White = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: ColorApp.whiteTextColor
  );
  static final TextStyle medium16White = GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: ColorApp.whiteTextColor
  );
  static final TextStyle regular20White = GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: ColorApp.whiteTextColor
  );
  static final TextStyle bold24White = GoogleFonts.inter(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: ColorApp.whiteTextColor
  );
  static final TextStyle medium16black= GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: ColorApp.blackColor
  );
}