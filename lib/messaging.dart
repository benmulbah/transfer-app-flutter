import 'package:flutter/material.dart';

class messaging extends StatefulWidget {
  const messaging({super.key});

  @override
  State<messaging> createState() => _messagingState();
}

class _messagingState extends State<messaging> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.only(left: 310)),
        FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      content: Container(
                        height: 140,
                        width: 300,
                        decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                hintText: "Add a new task",
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.grey.shade500),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  elevation: 3,
                                  color: Colors.blue.shade500,
                                  child: const Text(
                                    "Save",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  elevation: 3,
                                  color: Colors.blue.shade500,
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
            elevation: 3,
            backgroundColor: Colors.white,
            child: Icon(Icons.message, color: Colors.blue.shade500)),
      ],
    );
  }
}
