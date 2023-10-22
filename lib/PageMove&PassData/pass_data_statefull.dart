import 'package:flutter/Material.dart';

class PageThree extends StatefulWidget {
  var name;
  PageThree({this.name, super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is State Full Widget",
            ),
            SizedBox(
              height: 20,
            ),
            Text("Name is "),
          ],
        ),
      ),
    );
  }
}
