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
        appBar: AppBar(title: const Text('Wrap Widget')),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("This is Wrap Widget"),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.amber,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.green,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 70,
                      width: 70,
                    ),
                    Container(
                      color: Colors.black,
                      height: 70,
                      width: 70,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
