import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Quelle est votre couleur préféré ?',
      'answer': ['Rouge', 'Bleu', 'Violet', 'Marron'],
    },
    {
      'questionText': 'Quel est votre artiste préféré ?',
      'answer': ['Dena Mwanba', 'Hillsong', 'M.W.Smith', 'Madéleine Yombi'],
    },
    {
      'questionText': 'Quel est le nom du président Américain ?',
      'answer': ['Georges Bush', 'Antoine Padre', 'D.Trump', 'Emmanuel Macron'],
    },
    {
      'questionText': 'Quel est votre animal préféré',
      'answer': ['Chien', 'Chat', 'Singe', 'Elephant'],
    },
    {
      'questionText': 'Quel est votre niveau d\'étude ?',
      'answer': ['BEPC', 'BAC', 'BTS', 'License'],
    },
  ];
  var _questionIndex = 0;

  set questionIndex(questionIndex) {
    _questionIndex = questionIndex;
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
