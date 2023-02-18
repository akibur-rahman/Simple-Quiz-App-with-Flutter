import 'package:flutter/material.dart';

import 'answers.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {required this.answerPressed,
      required this.questions,
      required this.index});

  final List<Map<String, Object>> questions;
  final VoidCallback answerPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Questions(
              questions[index]['questionText'].toString(),
            ),
            ...(questions[index]['answers'] as List<Map<String, Object>>)
                .map((answer) {
              return Answer(() => answerPressed(answer['score']),
                  answer['text'] as String);
            }).toList()
          ],
        ),
      ),
    );
  }
}
