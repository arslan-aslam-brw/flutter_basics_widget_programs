import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    var time = DateTime.now();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Date And Time Formate'),
        ),
        body: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Time is ${DateFormat('jms').format(time)} ',
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Change Time'),
              ),
              Text(
                'Year, Month, Day is ${DateFormat('yMMMMd').format(time)}',
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Change Time'),
              ),
              Text(
                'Year & Month is ${DateFormat('yMMMM').format(time)}',
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Change Time'),
              ),
              Text(
                'DayName, Month date & Year is ${DateFormat('yMMMMEEEEd').format(time)}',
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Change Time'),
              ),
              Text(
                'Day, Month & Year is ${DateFormat('yMd').format(time)}',
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Change Time'),
              ),
              Text(
                'Short_DayName, Month date & Year is ${DateFormat('yMEd').format(time)}',
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Change Time'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
