import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // final int index;
  Question(this.questionText);

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(12),
        child: Text(
          this.questionText,
          style: TextStyle(fontSize: 25, color: Color(0xFF42A5F5)),
          textAlign: TextAlign.center,
        ));
  }
}
