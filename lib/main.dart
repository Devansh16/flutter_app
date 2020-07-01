import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your name?",
      "What is your age?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome'),
        ),
        body: Column(
          children: [
            Text('Questions!'),
            RaisedButton(
              child: Text(questions[0]),
              onPressed: null,
            ),
            RaisedButton(
              child: Text(questions[1]),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
