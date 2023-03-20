import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  const Result({super.key, required this.score, required this.reset});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "You Have Completed the Quiz",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Your Total Score is $score",
          style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        InkWell(
            onTap: () => reset(),
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: const Text(
                "Restart Quiz",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ))
      ],
    );
  }
}
