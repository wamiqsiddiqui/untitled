import 'package:flutter/material.dart';

import 'Routes.dart';
import 'arguments.dart';

class SignUp extends StatefulWidget {
  final String title;
  const SignUp({super.key, required this.title});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(Icons.password),
              TextFormField(
                controller: nameController,
                validator: (String? value) {
                  if (value == "") {
                    //value = WAMIQ
                    return "Name field cannot be empty";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailController,
                validator: (String? value) {
                  if (value == "") {
                    return "Email field cannot be empty";
                  } else if (!value!.contains("@") || !value.contains(".com")) {
                    return "Invalid Email Address";
                  } else {
                    return null;
                  }
                },
                // decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                validator: (String? value) {
                  if (value == "") {
                    //value = WAMIQ
                    return "Password field cannot be empty";
                  } else {
                    return null;
                  }
                },
                // decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.moviesRoute,
                        arguments: MovieScreenArguments(title: "Hello"));
                  },
                  child: const Text(
                    "Sign Up",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
