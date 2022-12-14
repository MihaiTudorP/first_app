import 'dart:ffi';

import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText'] as String),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) => Answer(
                onPressed: () => answerQuestion(answer['score'] as int),
                answerText: answer['text'] as String,
              ))
    ]);
  }
}
