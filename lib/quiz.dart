import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class QUIZ extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const QUIZ(
      {super.key,
      required this.answerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIndex]['questionText'].toString()),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer((() => answerQuestion(answer['score'])),
              answer['text'].toString());
        }).toList()
      ],
    );
  }
}
