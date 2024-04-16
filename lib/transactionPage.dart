import 'package:flutter/material.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.white)),
              Tab(icon: Icon(Icons.request_page_rounded, color: Colors.white)),
              Tab(icon: Icon(Icons.download, color: Colors.white)),
            ],
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "Transactions",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "Transaction Page",
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
