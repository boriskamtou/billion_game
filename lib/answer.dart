import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.purple,
        onPressed: selectHandler,
      ),
      width: double.infinity,
    );
  }
}
