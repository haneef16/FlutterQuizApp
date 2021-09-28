import 'package:flutter/material.dart';
import 'package:quiz/result.dart';
import './quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your favourite color?",
        "answers": [
          {"text": "💙blue", "score": 10},
          {"text": "❤️red", "score": 20},
          {"text": "💛yellow", "score": 30},
          {"text": "💚green", "score": 40}
        ],
      },
      {
        "questionText": "What's your favourite animal?",
        "answers": [
          {"text": "🦁lion", "score": 10},
          {"text": "🐘elephant", "score": 20},
          {"text": "🐈cat", "score": 30},
          {"text": "🐕dog", "score": 40}
        ],
      },
      {
        "questionText": "What's your age?",
        "answers": [
          {"text": "🧒10-15", "score": 10},
          {"text": "🙎15-20", "score": 20},
          {"text": "👨20-35", "score": 30},
          {"text": "🧓35-50", "score": 40},
        ],
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "📝Quiz App",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(score: _totalScore, resetHandler: _resetQuiz),
      ),
    );
  }
}
