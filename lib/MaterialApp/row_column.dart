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
            title: const Text("Rosw And Cloumn"),),
          body: Container(
            width: 400,
            height: 400,
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "A",
                  style: TextStyle(fontSize: 30, backgroundColor: Colors.brown),
                ),
                const Text(
                  "B",
                  style: TextStyle(fontSize: 30, backgroundColor: Colors.blue),
                ),
                const Text(
                  "C",
                  style: TextStyle(fontSize: 30, backgroundColor: Colors.green),
                ),
                ElevatedButton(
                    onPressed: () => print('Pressed'),
                    child: const Text("Button")),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "C1",
                      style: TextStyle(
                          fontSize: 30, backgroundColor: Colors.brown),
                    ),
                    const Text(
                      "C2",
                      style:
                          TextStyle(fontSize: 30, backgroundColor: Colors.blue),
                    ),
                    const Text(
                      "C3",
                      style: TextStyle(
                          fontSize: 30, backgroundColor: Colors.green),
                    ),
                    ElevatedButton(
                        onPressed: () => print('Pressed'),
                        child: const Text("Button")),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
