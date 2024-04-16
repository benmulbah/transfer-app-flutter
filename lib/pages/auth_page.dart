import 'package:container_day1/loginpage.dart';
import 'package:container_day1/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // Show a loading indicator while waiting for authentication state
            return const CircularProgressIndicator();
          }

          // Print out the authentication state for debugging
          print(
              'Auth state changed: ${snapshot.connectionState}, User: ${snapshot.data}');

          //user is logged in
          if (snapshot.hasData) {
            return MyHomePage();
          }

          //user is NOT logged in
          else {
            return loginPage();
          }
        },
      ),
    );
  }
}
