import 'package:flutter/Material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('More Owsome Icons Widget')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'More Icons',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.google),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.water),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.amazon),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.alipay),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.arrowsSpin),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.googlePay),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.googlePlay),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.award),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.ban),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.peopleGroup),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.circleUser),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.users),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.user),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.colonSign),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.copy),
            ],
          ),
        ),
      ),
    ));
  }
}
