import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
    {
      'questionText': "What is your favourite Animal?",
      'answers': ['Lion', 'Tiger', 'Zebra', 'Girraffe'],
    },
    {
      'questionText': "What is your favourite Color?",
      'answers': ['Red', 'Blue', 'Green', 'Yellow'],
    },
    {
      'questionText': "Which one of these is gonna be a billionaire?",
      'answers': ['Devansh', 'Devansh', 'Devansh', 'Devansh'],
    }
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: questions,
                )
              : Result()),
    );
  }
}
