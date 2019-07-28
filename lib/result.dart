import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get getPhraseResult {
    var resultText = 'You did it !!!';

    if (totalScore <= 8) {
      resultText = "You are awesome and innoncent";
    } else if (totalScore <= 12) {
      resultText = "Pretty likeable";
    } else if (totalScore <= 16) {
      resultText = "You are ... Strange";
    } else {
      resultText = "You are so bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              getPhraseResult,
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Restart quiz'),
              textColor: Colors.purple,
              onPressed: resetQuiz,
            )
          ],
        ),
      ),
    );
  }
}
