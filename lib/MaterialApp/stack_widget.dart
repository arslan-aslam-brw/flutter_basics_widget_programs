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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/img_one.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 230,
                      height: 230,
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'This is My Iamge',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/img_one.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 230,
                      height: 230,
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'This is My Iamge',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/img_one.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 230,
                      height: 230,
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'This is My Iamge',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/img_one.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 230,
                      height: 230,
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'This is My Iamge',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
