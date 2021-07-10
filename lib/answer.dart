import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerAction;
  final String answer;

  Answer(this.answerAction, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xE657A7B1),
                onPrimary: Colors.white,
                shadowColor: Colors.white,
                elevation: 5,
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
            child: Text(this.answer),
            onPressed: this.answerAction));
  }
}
