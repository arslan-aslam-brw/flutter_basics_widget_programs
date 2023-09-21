import 'dart:async';

import 'package:basic_flutter_one/PageMove&PassData/login_simple.dart';

import 'package:flutter/Material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
//// timer class I used for my splash scrreen timing
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage('assets/images/img_one.jpg'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(top: 700, left: 150),
            child: Text(
              'This is Splash Screen',
              style: TextStyle(fontSize: 25, color: Colors.amber.shade700),
            ),
          )),
    );
  }
}
