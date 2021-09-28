import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answer;

  const Answer(this.selectHandler, this.answer, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 80,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(
          answer,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
        ),
      ),
    );
  }
}
