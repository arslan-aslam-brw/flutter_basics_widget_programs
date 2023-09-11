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
        backgroundColor: const Color.fromARGB(255, 182, 197, 213),
        appBar: AppBar(
          title: const Text('Text Field'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Date is ', style: TextStyle(fontSize: 25)),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePicker = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2024));
                    if (datePicker != null) {
                      print(
                          'Picked Date is ${datePicker.day}- ${datePicker.month} - ${datePicker.year}');
                    }
                  },
                  child: const Text('Pick Date')),
              // const Padding(padding: EdgeInsets.all(20.0)),
              // Text('Time is ', style: TextStyle(fontSize: 25)),
              // ElevatedButton(onPressed: () {}, child: const Text('Pick Time')),
            ],
          ),
        ),
      ),
    );
  }
}
