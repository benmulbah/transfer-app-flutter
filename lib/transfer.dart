// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class transfer extends StatelessWidget {
  const transfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "Transfer Money",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50, right: 30, left: 30),
          child: ListView(
            children: [
              const Icon(
                Icons.person,
                size: 100,
                color: Colors.black,
              ),
              const SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: "Account Number",
                  labelStyle: TextStyle(
                      color: Colors.blue.shade500, fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: " Reciever Name",
                  labelStyle: TextStyle(
                      color: Colors.blue.shade500, fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: " Email Address",
                  labelStyle: TextStyle(
                      color: Colors.blue.shade500, fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  labelText: " Message",
                  labelStyle: TextStyle(
                      color: Colors.blue.shade500, fontWeight: FontWeight.bold),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.blue.shade500),
                  onPressed: () {},
                  child: const Text(
                    "Make Transfer",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ));
  }
}
