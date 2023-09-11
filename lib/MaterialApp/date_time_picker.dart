import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyApps();
  }
}

class MyApps extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Date & time Picker Dialog'),
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
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now());

                    if (datePicker != null) {
                      print(
                          'Picked Date is ${datePicker.day}- ${datePicker.month} - ${datePicker.year}');
                    }
                  },
                  child: const Text('Pick Date')),
              // const Padding(padding: EdgeInsets.all(20.0)),
              // const Text('Time is ', style: TextStyle(fontSize: 25)),
              // ElevatedButton(
              //     onPressed: () async {
              //       TimeOfDay? dayTime = await showTimePicker(
              //           context: context, initialTime: TimeOfDay.now());

              //       if (dayTime != null) {
              //         print(
              //             'Picked Date is ${dayTime.hour}- ${dayTime.minute} ');
              //       }
              //     },
              //     child: const Text('Pick Time')),
            ],
          ),
        ),
      ),
    );
  }
}
