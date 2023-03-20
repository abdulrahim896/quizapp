import 'package:flutter/material.dart';

import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final Function onAnswerTap;
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  const Quiz(
      {super.key,
      required this.questions,
      required this.questionIndex,
      required this.onAnswerTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(
          question: questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answers(
              answer: answer['text'],
              onTap: () => onAnswerTap(answer['score']));
        }).toList()
      ],
    );
  }
}
