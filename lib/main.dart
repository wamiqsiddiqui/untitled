import 'package:flutter/material.dart';
import 'package:untitled/profile.dart';
import 'package:untitled/signup.dart';
import 'package:untitled/tip.dart';
import 'package:untitled/tipCalculator.dart';
import 'Routes.dart';
import 'customTheme.dart';
import 'login.dart';
import 'movie.dart';
import 'movies.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkModeEnabled = false;
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
        isDarkModeEnabled = false;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
        isDarkModeEnabled = true;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    String title = "hello";
    return MaterialApp(
      title: 'Flutter Demo',
      // initialRoute: "/",
      // onGenerateRoute: Routes.generateRoute,
      theme: themeData,
      darkTheme: darkThemeData,
      themeMode: isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theming App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to the Theming App!',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 20.0),
              Switch(
                onChanged: (bool value) {
                  //true //false
                  print("value = ${value}");
                  if (isSwitched == false) {
                    setState(() {
                      isSwitched = true;
                      textValue = 'Switch Button is ON';
                      isDarkModeEnabled = false;
                    });
                    print('Switch Button is ON');
                  } else {
                    setState(() {
                      isSwitched = false;
                      textValue = 'Switch Button is OFF';
                      isDarkModeEnabled = true;
                    });
                    print('Switch Button is OFF');
                  }
                },
                value: isSwitched,
                activeColor: Colors.blue,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isDarkModeEnabled = !isDarkModeEnabled;
                  });
                },
                child: Text(isDarkModeEnabled
                    ? 'Switch to Light Mode'
                    : 'Switch to Dark Mode'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
