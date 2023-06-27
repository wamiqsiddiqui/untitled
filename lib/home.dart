import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color containerColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print("CLICKING...");
            setState(() {
              containerColor = Colors.green;
            });
          },
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: containerColor),
              child: Center(
                child: const Text("Home"),
              )),
        ),
      ),
    );
  }
}
