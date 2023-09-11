import 'package:flutter/material.dart';

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
          title: const Text('Scroll View'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          height: 100,
                          width: 100,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10.0),
                    height: 100,
                    color: Colors.amber,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
