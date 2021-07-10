import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s is your favourite color?',
      'answers': [
        {'text': 'red', 'score': 8},
        {'text': 'black', 'score': 10},
        {'text': 'green', 'score': 5},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s is your favourite animal?',
      'answers': [
        {'text': 'lion', 'score': 8},
        {'text': 'tiger', 'score': 10},
        {'text': 'cheetah', 'score': 5},
        {'text': 'elephant', 'score': 1}
      ]
    },
    {
      'questionText': 'Which is your favourite programming language?',
      'answers': [
        {'text': 'python', 'score': 8},
        {'text': 'flutter', 'score': 10},
        {'text': 'java', 'score': 5},
        {'text': 'php', 'score': 1},
        {'text': 'mean', 'score': 3}
      ]
    }
  ];

  void _answerQuestion(score) {
    setState(() {
      _questionIndex++;
      _totalScore += score;
      print(_totalScore);
    });
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Flutter App'),
          centerTitle: true,
          backgroundColor: Color(0xE657A7B1),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
