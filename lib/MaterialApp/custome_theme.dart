import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.brown,
          textTheme: const TextTheme(
            displaySmall: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontStyle: FontStyle.normal,
            ),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 10,
            color: Colors.orange,
            centerTitle: false,
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Custome Theme'),
          ),
          body: Text('Hello', style: Theme.of(context).textTheme.displayMedium),
        ));
  }
}
