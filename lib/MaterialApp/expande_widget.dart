import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Custome Fonts'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.orange,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    ));
  }
}
