import 'package:flutter/material.dart';
import 'package:untitled/quotes.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int index = 0;
  List<Widget> screens = [const Home(), const Quotes()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int givenIndex) {
          print("HELLOOOOOOOO $index");
          setState(() {
            index = givenIndex;
          });
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Quotes", icon: Icon(Icons.quora)),
        ],
      ),
      body: screens[index],
    );
  }
}
