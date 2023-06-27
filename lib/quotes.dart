import 'package:flutter/material.dart';

import 'home.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<String> quotes = [
    "A man convinced against his will, is of the same opinion still",
    "Utho beta kaam pe jao!",
  ];
  TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quotes")),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            children: [
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  suffix: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        // print("myController.text = ${myController.text}");
                        quotes.add(myController.text);
                      });
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: ListView.builder(
                    itemCount: quotes.length, //0,1
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        leading: const Icon(Icons.person),
                        title: Text("Quote ${index + 1}"),
                        subtitle: Text(quotes[index]),
                      );
                    }),
              )
            ],
          )),
    );
  }
}
