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
      'answers': [
        '3 210 m',
        '29 m',
        '8 850 m',
        '8 580 m'
        ],
        }, 
      {'questionText': 'How many cats are registered in Norway?',
      'answers': [
        '600 000',
        '500 000',
        '1 000 000',
        '700 000'
        ],
        },
      {'questionText': 'Which statement is true?',
      'answers': [
        'Santa Claus is real',
        'Mahatma Gandhi was actually quite nice',
        'Gary Goodspeed is a real person',
        'Blue and yellow mixed gives you pink'
        ],
        }, 
    ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
    : Result()
      ),
    );
  }
}

 