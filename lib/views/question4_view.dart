import 'package:flutter/material.dart';
import 'package:quize_app/widget/answer_btn.dart';
import 'package:quize_app/widget/back_btn.dart';
import 'package:quize_app/widget/costum_background.dart';
import 'package:quize_app/widget/headline_question.dart';
import 'package:quize_app/widget/next_btn.dart';
import 'package:quize_app/widget/question_number_btn.dart';

class Question4View extends StatelessWidget {
  const Question4View({super.key});
  final List<String> answers = const [
    'Exercise',
    'Meditation or yoga',
    'Talking to friends or family',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CostumBackground(
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuestionNumberBtn(
              questionNumber: 4,
            ),
            const HeadlineQuestion(
              question: 'How do you typically manage stress?',
            ),
            Container(
              padding: const EdgeInsets.only(top: 32),
              child: Column(
                children:
                    answers.map((answer) => AnswerBtn(answer: answer)).toList(),
              ),
            ),
            const Expanded(child: SizedBox()),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackBtn(path: '/question3View'),
                NextBtn(path: '/question3View'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
