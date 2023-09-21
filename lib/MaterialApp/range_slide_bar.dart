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
  /// defining values from to 1,10
  RangeValues values = const RangeValues(1, 10);

  @override
  Widget build(BuildContext context) {
    /// showing label of values
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Range Slider'),
          centerTitle: true,
        ),
        body: Center(
          child: RangeSlider(
            values: values,
            labels: labels,

            /// how much we want to give for one slide part, in division
            divisions: 10,

            /// max values , if we want to give it our defined value
            max: 10,
            activeColor: Colors.green,
            inactiveColor: Colors.green.shade100,

            /// functionalty of slider, work wit this func
            onChanged: (newValue) {
              values = newValue;
              print('$newValue');

              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
