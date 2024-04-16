import 'package:container_day1/beneficial.dart';
import 'package:container_day1/firebase_options.dart';
import 'package:container_day1/forgotpin.dart';
import 'package:container_day1/history.dart';
import 'package:container_day1/manager.dart';
import 'package:container_day1/messaging.dart';
import 'package:container_day1/payments.dart';
import 'package:container_day1/phone.dart';
import 'package:container_day1/request.dart';
import 'package:container_day1/transactionPage.dart';
import 'package:container_day1/transfer.dart';
import 'package:container_day1/widget_extra/getting_started.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Method to sign user out

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: gettingStarted());
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text(
          "D a s h b o a r d",
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(-1, -1),
                      blurRadius: 60,
                      color: Colors.grey,
                    ),
                  ],
                  color: Colors.white),
              height: 200,
              width: 380,
              child: Center(
                child: Text(
                  "Welcome Back ${user.email!}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          GestureDetector(
            child: Container(
              width: 380,
              height: 50,
              color: Colors.blue.shade500,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Start Transaction",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TransactionPage()));
            },
          ),

          //! My dashboard button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const transfer())));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 50),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(20)),
                          Icon(
                            Icons.transfer_within_a_station,
                            size: 40,
                            color: Colors.blue.shade500,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "Transfer",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //? Second button here
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const payments())));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 25),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(20)),
                          Icon(
                            Icons.payment,
                            size: 40,
                            color: Colors.blue.shade500,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "Payments",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //?Third button here
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const request()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 25),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(20)),
                          Icon(
                            Icons.request_page_rounded,
                            size: 40,
                            color: Colors.blue.shade500,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "Requests",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //? fourth

              const SizedBox(
                width: 20,
              ),

              //?
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const history())));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 50),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(20)),
                          Icon(
                            Icons.history,
                            size: 40,
                            color: Colors.blue.shade500,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "History",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //? Second button here
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const manager())));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 25),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(20)),
                          Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.blue.shade500,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "Acct. Manager",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //?Third button here
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const beneficial()));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 25),
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Padding(padding: EdgeInsets.all(20)),
                          Icon(
                            Icons.people,
                            size: 40,
                            color: Colors.blue.shade500,
                          ),
                          const SizedBox(width: 20),
                          Text(
                            "Beneficial",
                            style: TextStyle(
                                color: Colors.blue.shade500,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),

              //?
            ],
          ),

          const SizedBox(
            height: 100,
          ),

          //! Below is the dialogy box
          const messaging()
        ],
      ),

      //!Drawer for the hamburger icon
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset(
                  "assets/logo2.png",
                ),
              ),

              //! The list of items in the menu
              ListTile(
                leading:
                    Icon(Icons.home, color: Colors.blue.shade500, size: 25),
                title: const Text(
                  "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue.shade500),
                title: const Text(
                  "Phone",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Phone()));
                },
              ),
              ListTile(
                  leading: Icon(Icons.lock_open, color: Colors.blue.shade600),
                  title: const Text(
                    "Forgot Pin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const forgotpin()));
                  }),
              ListTile(
                  leading: Icon(Icons.logout, color: Colors.blue.shade500),
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: signUserOut),
            ],
          ),
        ),
      ),
    );
  }
}
