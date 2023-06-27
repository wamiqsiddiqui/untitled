import 'package:flutter/material.dart';
import 'package:untitled/dashboard.dart';
import 'package:untitled/quotes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String text = "LOGIN";
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to $text Screen")),
      body: Center(
        child: Container(
          height: 400.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.red,
          ),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 28),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "Please enter your email",
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      label: const Text("Password"),
                      suffix: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove_red_eye)),
                      hintText: "Please enter your password",
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 5))),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Dashboard()));
                  },
                  child: const Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
