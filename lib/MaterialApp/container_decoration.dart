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
        appBar: AppBar(
          title: const Text('Box Decoration in Container'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(80)),
              border: Border.all(
                width: 5,
                color: Colors.deepPurple,
              ),
              boxShadow: const [
                BoxShadow(color: Colors.black, spreadRadius: 2, blurRadius: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
