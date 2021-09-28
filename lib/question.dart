import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(50),
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.bold,
          fontFamily: "sans-serif",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
