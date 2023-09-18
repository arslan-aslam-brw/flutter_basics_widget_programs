import 'package:flutter/Material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Widget')),
        body: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
            const Positioned(
              left: 40,
              bottom: 12,
              child: Text('This is Possition'),
            ),
          ],
        ),
      ),
    );
  }
}
