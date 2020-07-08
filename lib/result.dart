import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 20) {
      resultText = "WTF BRUH!";
    } else if (resultScore > 20 && resultScore <= 26) {
      resultText = "TRY HARDER MY MAN!";
    } else {
      resultText = "GREAT JOB, BUD!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
