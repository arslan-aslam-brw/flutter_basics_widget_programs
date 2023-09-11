// ignore_for_file: sized_box_for_whitespace

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
            title: const Text("ListTile"),
          ),
          body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  width: 70,
                  height: 70,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_one.jpg'),
                    radius: 70,
                  ),
                ),
                title: const Text('Arslan'),
                subtitle: const Text('This is My Name'),
                trailing: const Icon(Icons.add_comment),
              );
            },
            itemCount: 100,
            separatorBuilder: (context, index) {
              return const Divider(
                height: 10,
                thickness: 5,
              );
            },
          )),
    );
  }
}
