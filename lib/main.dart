import 'package:flutter/material.dart';

import 'package:flutapp/quiz.dart';
import 'package:flutapp/result.dart';
//import 'answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    //throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
    final _questions = const [
      {'questionText': 'How tall is Mount Everest?',
      'answers': [{
        'text': '3 210 m',
        'score': 0},
        {'text': '29 m',
        'score': 0},
        {'text': '8 850 m',
        'score': 1},
        {'text': '8 580 m',
        'score': 0}
        ],
        }, 
      {'questionText': 'How many cats are registered in Norway?',
      'answers': [
        {'text': '600 000',
        'score': 0},
        {'text': '500 000',
        'score': 0},
        {'text': '1 000 000',
        'score': 0},
        {'text': '700 000',
        'score': 1}
        ],
        },
      {'questionText': 'Which statement is true?',
      'answers': [
        {'text': 'Santa Claus is real',
        'score': 0},
        {'text': 'Mahatma Gandhi was actually quite nice',
        'score': 1},
        {'text': 'Gary Goodspeed is a real person',
        'score': 0},
        {'text': 'Blue and yellow mixed gives you pink',
        'score': 0}
        ],
        }, 
    ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    if (_questionIndex < _questions.length) {
     setState(() {
     _questionIndex = _questionIndex + 1;     
    });
    print(_questionIndex);
    print(_questions.length - 1);
    print('Det er flere spørsmål!');
    }
    else {
      print(_questionIndex);
      print(_questions.length - 1);
      print('Det er INGEN flere spørsmål!');
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: 
        Text(
          'My first app'
          ),
      ),
    body: _questionIndex < _questions.length
    ? Quiz(answerQuestion: _answerQuestion,
          questionIndex: _questionIndex, 
          questions: _questions,
          )
    : Result(_totalScore)
      ),
    );
  }
}

 