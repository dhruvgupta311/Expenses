import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionindex;
  final Function answerchosen;
  Quiz({
    required this.answerchosen,
    required this.questionindex,
    required this.questions,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        question(questions[questionindex]['questionText']
            .toString()), // question widget or class is used here to dispkay all questions using questionindex and key questiontext
        ...(questions[questionindex]['answers'] != null
                ? (questions[questionindex]['answers']
                    as List<Map<String, Object>>)
                : [])
            .map((answer) {
          return Answer(() => answerchosen(answer['score']), answer['text']);
        }).toList() // answer
        ///... is a spread operator used to avoid nested list
        // Answer(_answerchosen, questions[0]['answers']),
        // Answer(_answerchosen, questions[1]['answers']),
        // Answer(_answerchosen, questions[2]['answers']),
      ],
    );
  }
}
