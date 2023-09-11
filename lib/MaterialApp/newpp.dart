import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void submitForm() {
    if (formkey.currentState!.validate()) {}
  }

  String? validName(value) {
    if (value!.isEmpty) {
      return "Enter Name";
    }
    return null;
  }

  String? validateEmail(value) {
    if (value!.isEmpty) {
      return 'Please Enter Email';
    }
    RegExp regExp = RegExp(r'^[\w-\.]+@([\w.]+\.)+[\w-]{2,4}$');
    if (!regExp.hasMatch(value)) {
      return 'Please Enter Valid Email';
    }
    return null;
  }

  String? validPhone(value) {
    if (value!.isEmpty) {
      return "Email Is Required";
    }

    if (value.lenght != 5) {
      return "Please Enter Valid Phone Number";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form Validations"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: TextFormField(
                    validator: validName,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: validateEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  validator: validPhone,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                ),
                const SizedBox(height: 16),
                Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          submitForm();
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 20),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
