import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Image.asset("assets/netflix.jpg"),
        backgroundColor: Colors.transparent,
        elevation: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/strangerthings.jpg"),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        width: 50,
                        color: index % 2 == 0 ? Colors.red : Colors.green,
                        child: Image.asset("assets/strangerthings.jpg"),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        width: 50,
                        color: index % 2 == 0 ? Colors.red : Colors.green,
                        child: Image.asset("assets/strangerthings.jpg"),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
