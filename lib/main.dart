import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  List<int> _items = new List();

  @override
  void initState() {
    for (int i = 0; i < 30; i++) {
      _items.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'This is title',
      home: Scaffold(
          appBar: AppBar(
            title: Text('App Bar Title'),
          ),
          body: GridView.builder(
              itemCount: _items.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (BuildContext buildContext, int index) {
                return Card(
                  color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        index.toString(),
                        style: TextStyle(fontSize: 24.00),
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
