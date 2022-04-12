// ignore_for_file: deprecated_member_use

// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
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
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text('ASG_1'),
          ),
        ),
        backgroundColor: Colors.teal[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'enter the number and then press jump to:-)',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Container(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'enter a number between 0 or 5 ',
                      hintStyle: TextStyle(color: Colors.white)),
                  onChanged: (value) => x = value,
                  cursorColor: Colors.white,
                ),
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
                child: const Text('jump to '),
              ),
              Container(
                height: 20,
              ),
              Text(
                friuts[i],
                style: const TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
