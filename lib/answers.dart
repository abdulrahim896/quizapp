import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answer;
  final Function onTap;
  const Answers({super.key, required this.answer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.tealAccent, borderRadius: BorderRadius.circular(10)),
        child: Text(
          answer,
          style: const TextStyle(
              fontSize: 19, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
