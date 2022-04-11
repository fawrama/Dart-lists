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
  var i = 0;
  var x;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text(
                'enter the number and then press jump to:-)',
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter a number between 0 or 5 '),
                onChanged: (value) => x = value,
              ),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      if (x == null || x.isEmpty) x = '0';
                      i = int.parse(x);
                      if (i > 5) i = 5;
                      if (i < 0) i = 0;
                    });
                  },
                  child: Text('jump to ')),
              Text(
                friuts[i],
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
