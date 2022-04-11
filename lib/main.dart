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
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text('to traverse through the list please use below bottons :-)'),
              Text(friuts[i]),
              Row(
                children: [
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          i -= 1;
                          if (i < 0) i = 0;
                        });
                      },
                      child: Icon(Icons.minimize)),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          i += 1;
                          if (i > 5) i = 5;
                          print('plus pressed');
                        });
                      },
                      child: Icon(Icons.add)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
