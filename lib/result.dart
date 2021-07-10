import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final Function resetHandler;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    String result;
    if (this.score <= 8) {
      result = 'You are Awesome!';
    } else if (this.score <= 12) {
      result = 'You are likable!';
    } else if (this.score <= 16) {
      result = 'You are strange!';
    } else if (this.score <= 20) {
      result = 'You are negative!';
    } else {
      result = 'You are bad!';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: this.resetHandler,
            child: Text('Reset Quiz'),
            style: TextButton.styleFrom(
                textStyle: TextStyle(
              color: Color(0xFF42A5F5),
            )))
      ],
    ));
  }
}
