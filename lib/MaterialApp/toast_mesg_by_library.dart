import 'package:flutter/Material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _toastMessage(text, color, gravity) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: color,
        textColor: Colors.white,
        gravity: gravity);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Toast Message'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _toastMessage('This is Simple Toast', Colors.green,
                        ToastGravity.BOTTOM);
                  },
                  child: const Text('Simple Bottom Toast')),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    _toastMessage(
                        'This is Center Toast',
                        const Color.fromARGB(255, 31, 200, 206),
                        ToastGravity.CENTER);
                  },
                  child: const Text('Center Toast')),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    _toastMessage(
                        'This is Top Toast',
                        const Color.fromARGB(255, 186, 20, 103),
                        ToastGravity.TOP);
                  },
                  child: const Text('Top Toast')),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
