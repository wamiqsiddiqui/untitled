import 'package:flutter/material.dart';
import 'package:untitled/movie.dart';
import 'package:untitled/movies.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Movie());
      case '/feed':
        return MaterialPageRoute(builder: (_) => Movies());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
