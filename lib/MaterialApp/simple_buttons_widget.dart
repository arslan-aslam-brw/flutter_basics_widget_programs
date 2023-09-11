import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(title: const Text("This is Button")),
          body: Center(
            child: ElevatedButton(
              child: const Text(
                "This is simple Button",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                print("This Pressed");
              },
            ),
          )),
    );
  }
}
