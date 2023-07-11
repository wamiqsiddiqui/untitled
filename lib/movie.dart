import "package:flutter/material.dart";

class Movie extends StatefulWidget {
  const Movie({super.key});

  @override
  State<Movie> createState() => _MovieState();
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [Icon(Icons.favorite)],
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Image.asset("assets/netflix.jpg"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Image.asset("assets/strangerthings.jpg",
                      fit: BoxFit.fill),
                ),
                Positioned(
                  bottom: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              )),
                          Text(
                            "My List",
                            style: Theme.of(context).textTheme.labelSmall,
                          )
                        ],
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Play")),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.info,
                                size: 30,
                                color: Colors.white,
                              )),
                          Text(
                            "Infossssss",
                            style: Theme.of(context).textTheme.displayMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "Continue Watching for Wamiq",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 14,
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        height: 100,
                        width: 50,
                        color: index % 2 == 0 ? Colors.red : Colors.green,
                        child: Image.asset("assets/strangerthings.jpg"),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
