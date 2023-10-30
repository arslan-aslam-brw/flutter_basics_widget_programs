import 'package:flutter/Material.dart';

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
          title: const Text(
            'Gradient Color',
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //     colors: [
              //       Colors.green,
              //       Colors.brown,
              //     ],
              //     begin: FractionalOffset(0.0, 1.0),
              //     end: FractionalOffset(0.1, 0.0)),

              gradient: RadialGradient(
                  colors: [Colors.green, Colors.brown],
                  center: Alignment.topRight)),
        ),
      ),
    );
  }
}
