import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text("New App"),
        ),
        body: Container(
          width: 300,
          height: 100,
          color: Colors.blueGrey,
          child: const Center(
            child: Text(
              'This is a Container',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
