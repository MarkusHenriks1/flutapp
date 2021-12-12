import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({ Key? key }) : super(key: key);

  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore == 3) {
      resultText = 'You are awesome';
    }
    else if (resultScore == 2) {
      resultText = 'Very good';
    }
    else if (resultScore == 1) {
      resultText = 'Not so good';
    }
    else {
      resultText = 'Very bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
        );
  }
}
