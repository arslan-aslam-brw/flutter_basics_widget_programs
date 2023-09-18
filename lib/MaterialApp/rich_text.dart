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
        appBar: AppBar(title: const Text('Rich Text Widget')),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: RichText(
              /// This is by default if we want to keep some default styling of text
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 90, 203, 46),
                ),
                text: 'Hello ',
                children: [
                  /// manually changed fonts, styling etc
                  TextSpan(
                      text: 'World ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontStyle: FontStyle.italic,
                          fontSize: 30)),
                  TextSpan(
                      text: 'hahhahha',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 235, 6, 6),
                          fontStyle: FontStyle.italic,
                          fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
