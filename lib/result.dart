import 'package:first_app/restartQuizButton.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.grey,
    padding: EdgeInsets.all(10),
  );

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText += ' You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText += ' Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText += ' You are ... strange?';
    } else {
      resultText += ' You are so bad!';
    }
    return resultText;
  }

  Result({@required this.resultScore, @required this.resetQuiz});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          RestartQuizButton(
              resetQuiz: resetQuiz, flatButtonStyle: flatButtonStyle)
        ],
      ),
    );
  }
}
