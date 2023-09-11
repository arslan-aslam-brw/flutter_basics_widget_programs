import 'package:flutter/Material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple UI Practice'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  color: Colors.blue.shade200,
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 100,
                          child: CircleAvatar(
                            backgroundColor: Colors.pink.shade200,
                          ),
                        ),
                      );
                    },
                    itemCount: 20,
                  )),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber.shade200,
                height: 150,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return const ListTile(
                      title: Text('Name'),
                      subtitle: Text('HAhahaha'),
                      trailing: Icon(Icons.add),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green.shade200,
                height: 150,
                child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 50,
                        color: Colors.red.shade400,
                        child: const SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('hello'),
                              Text('hello'),
                              Text('hello'),
                              Text('hello'),
                              Text('hello'),
                              Text('hello'),
                              Text('hello'),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red.shade200,
                height: 150,
              ),
            ),
            Container(
              height: 100,
              color: Colors.brown.shade200,
            ),
          ],
        ),
      ),
    );
  }
}
