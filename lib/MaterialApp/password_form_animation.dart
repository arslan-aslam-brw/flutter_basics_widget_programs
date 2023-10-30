import 'package:flutter/Material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey formKey = GlobalKey();

  bool _isVisible = true;

  bool isPassword8Char = false;
  bool hasMatchOneNum = false;

  passwordMatch(String password) {
    final numericRegx = RegExp(r'[0-9]');

    setState(() {
      isPassword8Char = false;
      if (password.length >= 8) {
        isPassword8Char = true;

        hasMatchOneNum = false;
        if (numericRegx.hasMatch(password)) {
          hasMatchOneNum = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create Password',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Set a password',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Please create a secure password including the following criteria below',
                style: TextStyle(
                    fontSize: 16, height: 1.5, color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return "Please Enter Password";
                //   }
                //   return null;
                // },
                key: formKey,
                onChanged: (password) => passwordMatch(password),
                obscureText: _isVisible,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Colors.black),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    suffixIcon: IconButton(
                      splashRadius: 1,
                      onPressed: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      icon: _isVisible
                          ? const Icon(
                              Icons.visibility_off,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.visibility,
                              color: Colors.black,
                            ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10))),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color:
                          isPassword8Char ? Colors.green : Colors.transparent,
                      border: isPassword8Char
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Contains at least 8 characters',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: hasMatchOneNum ? Colors.green : Colors.transparent,
                      border: hasMatchOneNum
                          ? Border.all(color: Colors.transparent)
                          : Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Contains at least 1 Number',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                color: Colors.black,
                minWidth: double.infinity,
                height: 50,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: const Text('Create Password'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
