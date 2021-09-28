import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;
  const Result({required this.score, required this.resetHandler, Key? key})
      : super(key: key);

  String get resultPhrase {
    var result = "🎉Conrats! Your score is $score";
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
              fontFamily: "sans-serif",
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            height: 120,
            width: 400,
            child: ElevatedButton(
              onPressed: resetHandler,
              child: const Text(
                "▶️ Replay",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
