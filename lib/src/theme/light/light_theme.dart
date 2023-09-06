import 'package:flutter/material.dart';
import 'package:task_app/src/global/ui_color.dart';
import 'package:task_app/src/theme/light/light_text_theme.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: UIColors.appColor,
  textTheme: lightTextTheme,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: Colors.black),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(UIColors.appColor),
    ),
  ),
  canvasColor: Colors.grey[200],
  shadowColor: Colors.grey[200],
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
    floatingLabelStyle: TextStyle(color: Colors.black),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: UIColors.appColor,
    selectionHandleColor: UIColors.appColor,
    selectionColor: UIColors.appColor,
  ),
  colorScheme: const ColorScheme.light(
    secondary: UIColors.appColor,
    primary: UIColors.appColor,
    background: Color(0xffecf3f3),
  ),
);
