import 'package:flutter/material.dart';

class beneficial extends StatelessWidget {
  const beneficial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Beneficial Detail",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Beneficial Page",
          style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
