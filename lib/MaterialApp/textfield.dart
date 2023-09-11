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
            title: const Text('Text Field'),
          ),
          body: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'email',
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Colors.green,
                        suffixText: 'Required',
                        suffixStyle: TextStyle(color: Colors.redAccent),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.pink,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'password',
                        prefixIcon: const Icon(Icons.password),
                        prefixIconColor: Colors.green,
                        suffixIcon: IconButton(
                          focusColor: Colors.orange,
                          splashRadius: 30,
                          splashColor: Colors.green,
                          onPressed: () => print('Pressed'),
                          icon: const Icon(Icons.remove_red_eye),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.orange,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(21)),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.pink,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(width: 5, color: Colors.pink),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        print('Pressed');
                      },
                      child: const Text(
                        'Button',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
