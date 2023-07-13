import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch: MaterialColor(
    0xff880808,
    <int, Color>{
      50: Colors.red.shade50,
      100: Colors.red.shade100,
      200: Colors.red.shade200,
      300: Colors.red.shade300,
      400: Colors.red.shade400,
      500: Colors.red.shade500,
      600: Colors.red.shade600,
      700: Colors.red.shade700,
      800: Colors.red.shade800,
      900: Colors.red.shade900
    },
  ),
  fontFamily: "Inspiration",
  primaryColor: Colors.red,
  appBarTheme: AppBarTheme(
    elevation: 0,
  ),
  primaryColorLight: Color(0x1aF5E0C3),
  primaryColorDark: Color(0xff936F3E),
  canvasColor: Color(0xffE09E45),
  scaffoldBackgroundColor: Color(0xffB5BFD3),
  cardColor: Color(0xaaF5E0C3),
  dividerColor: Color(0x1f6D42CE),
  focusColor: Color(0x1aF5E0C3),
  textTheme: TextTheme(
    labelSmall: TextStyle(
      color: Colors.yellow,
      fontSize: 10,
    ),
    displayMedium: TextStyle(color: Colors.yellow, fontSize: 10),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 20),
  ),
  iconTheme: IconThemeData(color: Colors.blue, size: 60),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
        borderRadius: BorderRadius.circular(20)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.yellow),
        borderRadius: BorderRadius.circular(20)),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(20)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(20)),
    labelStyle: TextStyle(color: Colors.blue),
  ),
);

final ThemeData darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: MaterialColor(
    0xffE3232B3,
    <int, Color>{
      50: Color(0x1aF5E0C3),
      100: Color(0xa1F5E0C3),
      200: Color(0xaaF5E0C3),
      300: Color(0xafF5E0C3),
      400: Color(0xffF5E0C3),
      500: Color(0xffEDD5B3),
      600: Color(0xffDEC29B),
      700: Color(0xffC9A87C),
      800: Color(0xffB28E5E),
      900: Color(0xff936F3E)
    },
  ),
  primaryColor: Colors.yellow,
  primaryColorLight: Color(0x1aF5E0C3),
  primaryColorDark: Color(0xff936F3E),
  canvasColor: Color(0xffE09E45),
  scaffoldBackgroundColor: Colors.blue.shade900,
  cardColor: Color(0xaaF5E0C3),
  dividerColor: Color(0x1f6D42CE),
  focusColor: Color(0x1aF5E0C3),
  textTheme: TextTheme(
    labelSmall: TextStyle(
      color: Colors.yellow,
      fontSize: 10,
    ),
    displayMedium: TextStyle(color: Colors.yellow, fontSize: 10),
    bodySmall: TextStyle(color: Colors.red, fontSize: 10),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(20)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(20)),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(20)),
    focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(20)),
    labelStyle: TextStyle(color: Colors.blue),
  ),
);
