import 'package:flutter/material.dart';
import 'package:task_app/src/global/ui_color.dart';

import 'dark_text_theme.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: UIColors.appColor,
  textTheme: darkTextTheme,
  shadowColor: Colors.black87,
  iconTheme: const IconThemeData(
    color: UIColors.appColor,
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.grey[200])),
  primaryIconTheme: const IconThemeData(
    color: UIColors.appColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        UIColors.appColor,
      ),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: UIColors.appColor,
  ),
  appBarTheme: const AppBarTheme(
    color: UIColors.appColor,
  ),
  radioTheme: RadioThemeData(
    fillColor: MaterialStateColor.resolveWith((states) => UIColors.appColor),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(color: UIColors.appColor),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: UIColors.appColor,
    selectionHandleColor: UIColors.appColor,
    selectionColor: UIColors.appColor,
  ),
  colorScheme: const ColorScheme.dark(
    secondary: UIColors.appColor,
    primary: UIColors.appColor,
  ),
);
