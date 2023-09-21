import 'package:basic_flutter_one/PageMove&PassData/login_simple.dart';
import 'package:basic_flutter_one/PageMove&PassData/splash_screen.dart';
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
    LoginPage(),
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
  var userName;
  var userEmail;

  HomePage(this.userName, this.userEmail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen & Page Move'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            const SizedBox(
              height: 20,
            ),
            Text('Your Name is: $userName'),
            const SizedBox(
              height: 20,
            ),
            Text('Email is: $userEmail'),
          ],
        ),
      ),
    );
  }
}
