import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // var arrData = ['Arslan', 'Aslam', 'Abid', 'Zulfiqar'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: const Center(
          child: Card(
            elevation: 30,
            shadowColor: Colors.green,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Card'),
            ),
          ),
        ),
      ),
    );
  }
}
