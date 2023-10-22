import 'package:flutter/Material.dart';

void main() {
  runApp(passwordField());
}

class passwordField extends StatefulWidget {
  passwordField({super.key});

  @override
  State<passwordField> createState() => _passwordFieldState();
}

class _passwordFieldState extends State<passwordField> {
  final GlobalKey passOne = GlobalKey();

  bool passwordShow = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Password Field'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  key: passOne,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: passwordShow,
                  decoration: InputDecoration(
                    label: const Text('Password'),
                    labelStyle: const TextStyle(color: Colors.amber),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordShow = !passwordShow;
                        });
                      },
                      icon: Icon(passwordShow
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.zero),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
