import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Arslan',
      'Abid',
      'Ahsan',
      'Mohsan',
      'Ijaz',
      'Aslam',
      'Arslan',
      'Abid',
      'Ahsan',
      'Mohsan',
      'Ijaz',
      'Aslam'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'List View',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrNames[index],
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
              );
            },
            itemCount: arrNames.length,
            itemExtent: 100,
          )),
    );
  }
}
