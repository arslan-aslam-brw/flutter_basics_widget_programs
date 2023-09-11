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
      home: Scaffold(
        appBar: AppBar(title: const Text('Sepratd List View')),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(arrNames[index]),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(arrNames[index]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(arrNames[index]),
                ),
              ],
            );
          },
          itemCount: arrNames.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 50,
              thickness: 5,
            );
          },
        ),
      ),
    );
  }
}
