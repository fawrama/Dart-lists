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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'enter the number and then press jump to:-)',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Container(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'enter a number between 0 or 5 ',
                    hintStyle: TextStyle(color: Colors.white)),
                onChanged: (value) => x = value,
                cursorColor: Colors.white,
              ),
              Container(
                height: 20,
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
                child: Text('jump to '),
              ),
              Container(
                height: 20,
              ),
              Text(
                friuts[i],
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
