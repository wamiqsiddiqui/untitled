import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 90,
                  backgroundImage: AssetImage(
                    "assets/test.jpg",
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: CircleAvatar(
                    child: Icon(Icons.camera),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.person),
                Column(
                  children: const [
                    Text("Name"),
                    Text("Wamiq"),
                    Text(
                      "This is not your username or pin.",
                    )
                  ],
                ),
                const Icon(Icons.edit)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.info),
                Column(
                  children: const [
                    Text("About"),
                    Text("WhatsApp Status..."),
                  ],
                ),
                const Icon(Icons.edit)
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(Icons.phone),
                Column(
                  children: const [
                    Text("Phone"),
                    Text("+923312345678"),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
