import 'package:flutter/material.dart';

class Movies extends StatefulWidget {
  final String movieTitle;
  const Movies({super.key, required this.movieTitle});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(widget.movieTitle),
        leading: Image.asset("assets/netflix.jpg"),
        // backgroundColor: Colors.transparent,
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/strangerthings.jpg"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back")),
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
