// ignore: file_names

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
        appBar: AppBar(title: const Text("This is Text() widget")),
        backgroundColor: Colors.amber,
        body: const Center(
          child: Text(
            "This is Text Widget",
            style: TextStyle(
              // style: this is a attribute of Text and TextStyle in this, is a Object
              color: Colors.blueGrey,
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
