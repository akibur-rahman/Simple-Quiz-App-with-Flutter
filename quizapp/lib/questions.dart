import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  const Questions(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
