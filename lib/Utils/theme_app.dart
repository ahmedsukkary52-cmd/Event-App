import 'package:evently/Utils/Style_app.dart';
import 'package:evently/Utils/color_app.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: ColorApp.primaryLight,
    canvasColor: ColorApp.blackColor,
    appBarTheme: AppBarTheme(backgroundColor: ColorApp.primaryLight,),
    scaffoldBackgroundColor: ColorApp.whiteBgColor,
    textTheme: TextTheme(
      headlineLarge: TextApp.bold20Black,
        displayMedium: TextApp.bold16Black,
      bodySmall: TextApp.medium16black
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorApp.whiteBgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    )
  ) ;
  static final ThemeData darkTheme = ThemeData(
      canvasColor: ColorApp.whiteBgColor,
      primaryColor: ColorApp.primaryDark,
      appBarTheme: AppBarTheme(backgroundColor: ColorApp.primaryDark,),
      scaffoldBackgroundColor: ColorApp.primaryDark,
      textTheme: TextTheme(
        headlineLarge: TextApp.bold20White,
        displayMedium: TextApp.bold16White,
          bodySmall: TextApp.medium16White
      ),
    bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: ColorApp.primaryDark,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  )
  ) ;
}