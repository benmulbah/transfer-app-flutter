import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final Function()? onTap;
  const myButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.blue.shade500,
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
            child: Text(
          "Login",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
