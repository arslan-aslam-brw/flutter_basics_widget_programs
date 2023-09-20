import 'package:basic_flutter_one/PageMove/login_simple.dart';
import 'package:basic_flutter_one/PageMove/splash_screen.dart';
import 'package:flutter/Material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /// I Define Arry for multiple pages run from scafold body with array variable
  /// Array variable store multiple pages and I pass currentIndex Variable in
  /// array variable like this page[///currentIndex].
  int currentIndex = 0;

  final List pages = [
    /// variable of arry type
    const SplashScreen(),
    const LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Splash Screen & Page Move'),
          centerTitle: true,
        ),
        body: pages[currentIndex],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen & Page Move'),
        centerTitle: true,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: const Center(child: Text('Home Screen'))),
    );
  }
}
