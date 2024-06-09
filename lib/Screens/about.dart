import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        centerTitle: true,
      ),
      body: const Center(
          child: Text(
        "Coming Soon",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}