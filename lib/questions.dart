import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;
  const Questions({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.green.shade700,
            fontSize: 28,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
