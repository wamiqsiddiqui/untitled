import 'package:flutter/material.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/signup.dart';
import 'package:untitled/tip.dart';
import 'package:untitled/tipCalculator.dart';
import 'login.dart';
import 'movie.dart';
import 'movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme:
            ThemeData(primarySwatch: Colors.green, primaryColor: Colors.green),
        home: const Movie() //Set first screen of the app
        );
  }
}