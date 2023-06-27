import 'package:flutter/material.dart';

final ThemeData myTheme = ThemeData(
  primarySwatch: const MaterialColor(
    0xFFFFFF,
    {
      900: Color.fromRGBO(185, 60, 60, 1),
      800: Color.fromRGBO(185, 60, 60, 1),
      700: Color.fromRGBO(185, 60, 60, 1),
      600: Color.fromRGBO(185, 60, 60, 1),
      500: Color.fromRGBO(185, 60, 60, 1),
      400: Color.fromRGBO(185, 60, 60, 1),
    },
  ), // The primary color for the app

  buttonTheme: ButtonThemeData(
    // The background color of the button
    textTheme: ButtonTextTheme.primary, // The text color of the button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Customize the button shape
    ),
    padding: EdgeInsets.symmetric(
        vertical: 12, horizontal: 16), // Customize the button padding
  ),
  fontFamily: 'Roboto', // The default font family
  appBarTheme: AppBarTheme(backgroundColor: Colors.yellow),
  textTheme: TextTheme(
    bodySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  ),

  // You can add more customizations as needed
);
