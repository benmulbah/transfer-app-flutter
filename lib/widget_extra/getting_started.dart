import 'package:container_day1/pages/auth_page.dart';
import 'package:flutter/material.dart';

class gettingStarted extends StatelessWidget {
  const gettingStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.only(top: 150, right: 25, left: 25),
        child: Column(
          children: [
            Image.asset("assets/logo2.png"),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[500],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AuthPage()));
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
