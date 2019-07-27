import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Hello world');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Aimez-vous manger ?',
      'Mangez-vous avant de dormir ?',
      'Quel âge avez-vous ?'
    ];

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Réponse 1'),
              onPressed: () {
                answerQuestion();
              },
            ),
            RaisedButton(
              child: Text('Réponse 2'),
              onPressed: () {
                answerQuestion();
              }
            ),
            RaisedButton(
              child: Text('Réponse 3'),
              onPressed: () {
                answerQuestion();
              }
            ),
          ],
        ),
      ),
    );
  }
}
