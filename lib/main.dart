import 'dart:developer';

import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      if (_questionIndex + 1 < 2) _questionIndex++;
    });
    log("Answer selected");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My first app'),
      ),
      body: Column(children: [
        Question(questions[_questionIndex]),
        ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
        ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 2')),
        ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3'))
      ]),
    ));
  }
}
