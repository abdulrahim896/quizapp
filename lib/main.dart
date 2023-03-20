import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;
  _answerTap(int score) {
    _questionIndex = _questionIndex + 1;
    _totalScore += score;
    setState(() {});
  }

  _restartQuiz() {
    _totalScore = 0;
    _questionIndex = 0;
    setState(() {});
  }

  final List<Map<String, dynamic>> _questions = [
    {
      "question": "What is the capital of France?",
      "answers": [
        {"score": 1, "text": "Paris"},
        {"score": 0, "text": "Berlin"},
        {"score": 0, "text": "Madrid"},
        {"score": 0, "text": "London"}
      ],
    },
    {
      "question": "What is the largest planet in our solar system?",
      "answers": [
        {"score": 0, "text": "Earth"},
        {"score": 1, "text": "Jupiter"},
        {"score": 0, "text": "Mars"},
        {"score": 0, "text": "Venus"}
      ],
    },
    {
      "question": "Which country is home to the kangaroo?",
      "answers": [
        {"score": 1, "text": "Australia"},
        {"score": 0, "text": "New Zealand"},
        {"score": 0, "text": "South Africa"},
        {"score": 0, "text": "India"}
      ],
    },
    {
      "question": "What is the smallest continent?",
      "answers": [
        {"score": 0, "text": "Africa"},
        {"score": 0, "text": "Asia"},
        {"score": 1, "text": "Australia"},
        {"score": 0, "text": "Europe"}
      ],
    },
    {
      "question": "What is the tallest mammal?",
      "answers": [
        {"score": 0, "text": "Elephant"},
        {"score": 1, "text": "Giraffe"},
        {"score": 0, "text": "Horse"},
        {"score": 0, "text": "Rhinoceros"}
      ],
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: (_questionIndex < _questions.length)
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    onAnswerTap: _answerTap,
                  )
                : Result(
                    score: _totalScore,
                    reset: () => _restartQuiz(),
                  ),
          ),
        ),
      ),
    );
  }
}
