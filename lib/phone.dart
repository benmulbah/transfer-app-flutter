import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Phone",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              Icon(
                Icons.person,
                size: 200,
                color: Colors.blue.shade500,
              ),
              const SizedBox(height: 20),
              Expanded(
                  child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.blue.shade500,
                      size: 40,
                    ),
                    title: const Text(
                      "John Flomo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.blue.shade500,
                      size: 40,
                    ),
                    title: const Text(
                      "example@gmail.com",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue.shade500,
                      size: 40,
                    ),
                    title: const Text(
                      "0000000000",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
