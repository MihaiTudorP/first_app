import 'package:flutter/material.dart';

class RestartQuizButton extends StatelessWidget {
  const RestartQuizButton({
    Key key,
    @required this.resetQuiz,
    @required this.flatButtonStyle,
  }) : super(key: key);

  final VoidCallback resetQuiz;
  final ButtonStyle flatButtonStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        onPressed: resetQuiz,
        child: Text(
          'Restart quiz',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        style: flatButtonStyle,
      ),
    );
  }
}
