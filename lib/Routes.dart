import 'package:flutter/material.dart';
import 'package:untitled/arguments.dart';
import 'package:untitled/movies.dart';
import 'package:untitled/signup.dart';

class Routes {
  static const defaultRoute = "/";
  static const moviesRoute = "/movies";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case defaultRoute:
        var args = settings.arguments;
        return MaterialPageRoute(
            builder: (_) => SignUp(
                  title: "",
                ));
      case moviesRoute:
        var args = settings.arguments as MovieScreenArguments;
        print("args = ${args}");
        return MaterialPageRoute(
            builder: (_) => Movies(
                  movieTitle: args.title,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
