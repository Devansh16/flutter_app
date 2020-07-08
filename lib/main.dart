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
  final _questions = const [
    {
      'questionText': "What is your favourite Animal?",
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 8},
        {'text': 'Leopard', 'score': 6},
        {'text': 'Giraffe', 'score': 3},
      ],
    },
    {
      'questionText': "What is your favourite Color?",
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 6},
        {'text': 'Yellow', 'score': 3},
      ],
    },
    {
      'questionText': "Which one of these is gonna be a billionaire?",
      'answers': [
        {'text': 'Devansh', 'score': 10},
        {'text': 'Devansh', 'score': 10},
        {'text': 'Devansh', 'score': 10},
        {'text': 'Devansh', 'score': 10},
      ],
    }
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
