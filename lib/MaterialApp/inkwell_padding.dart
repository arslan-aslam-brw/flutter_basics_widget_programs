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
          title: const Text('Inkwell & Padding'),
        ),
        body: Column(
          children: [
            InkWell(
              child: Image.asset('assets/images/img_one.jpg'),
              onTap: () => print('pressed'),
            ),
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(top: 10.0),
              color: Colors.amber,
              child: const Text(
                'Text!!',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.brown),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Padding!!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.brown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
