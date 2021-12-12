import 'package:flutter/material.dart';

import 'package:flutapp/main.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  //const Question({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        _questionText, 
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        ),
    );
  }
}