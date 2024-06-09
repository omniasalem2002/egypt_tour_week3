import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
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
