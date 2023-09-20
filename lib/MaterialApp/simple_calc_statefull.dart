import 'package:flutter/Material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHome();
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyCalc();
  }
}

class MyCalc extends State<MyHome> {
  var value1 = TextEditingController();
  var value2 = TextEditingController();
  var result = '';
  var clear = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:
            AppBar(title: const Text('Simple Calculator'), centerTitle: true),
        body: Container(
          color: Colors.blue.shade100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: value1,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text('Value 1'),
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero)),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: value2,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text('Value 2'),
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.zero)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          var v1 = int.parse(value1.text.toString());
                          var v2 = int.parse(value2.text.toString());

                          var sum = v1 + v2;

                          result = '$sum';

                          setState(() {});
                        },
                        child: const Text('Add')),
                    ElevatedButton(
                        onPressed: () {
                          var v1 = int.parse(value1.text.toString());
                          var v2 = int.parse(value2.text.toString());

                          var sum = v1 - v2;

                          result = '$sum';

                          setState(() {});
                        },
                        child: const Text('Sub')),
                    ElevatedButton(
                        onPressed: () {
                          var v1 = int.parse(value1.text.toString());
                          var v2 = int.parse(value2.text.toString());

                          var sum = v1 * v2;

                          result = '$sum';

                          setState(() {});
                        },
                        child: const Text('Multi')),
                    ElevatedButton(
                        onPressed: () {
                          var v1 = int.parse(value1.text.toString());
                          var v2 = int.parse(value2.text.toString());

                          var sum = v1 / v2;

                          result = sum.toStringAsFixed(3);

                          setState(() {});
                        },
                        child: const Text('Divid')),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Reslut $result',
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        value1.clear();
                        value2.clear();
                        result = clear;

                        setState(() {});
                      },
                      child: const Text('Clear')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
