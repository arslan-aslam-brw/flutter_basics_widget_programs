import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyLocalizationWidgetTreeForDialoges_Alerts_Etc(),
    );
  }
}

class MyLocalizationWidgetTreeForDialoges_Alerts_Etc extends StatelessWidget {
  const MyLocalizationWidgetTreeForDialoges_Alerts_Etc({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Localization For Dialogs")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  DateTime? pickDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1990),
                      lastDate: DateTime.now());
                  if (pickDate != null) {
                    print(
                        "Picked Date is: ${pickDate.day}-${pickDate.month}-${pickDate.year}");
                  }
                },
                child: const Text('Pick Date Dialog')),
          ],
        ),
      ),
    );
  }
}
