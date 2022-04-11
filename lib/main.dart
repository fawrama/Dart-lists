import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var friuts = ['apple', 'peach', 'oranges', 'grape', 'bannana', 'mango'];
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            Text('to traverse through the list please use below bottons :-)'),
            Text('$friuts[i]'),
            Row(
              children: [
                FlatButton(
                    onPressed: () {
                      i -= 1;
                    },
                    child: Icon(Icons.minimize_rounded)),
                FlatButton(
                    onPressed: () {
                      i += 1;
                    },
                    child: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
