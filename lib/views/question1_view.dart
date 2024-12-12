import 'package:flutter/material.dart';
import 'package:quize_app/widget/answer_btn.dart';
import 'package:quize_app/widget/back_btn.dart';
import 'package:quize_app/widget/costum_background.dart';
import 'package:quize_app/widget/headline_question.dart';
import 'package:quize_app/widget/next_btn.dart';
import 'package:quize_app/widget/question_number_btn.dart';

class Question1View extends StatelessWidget {
  const Question1View({super.key});
  final List<String> answers = const [
    'Strongly satisfied',
    'Satisfied',
    'Neutral',
    'Not satisfied'
  ];
  static String question2View = '/question2View';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CostumBackground(
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuestionNumberBtn(
              questionNumber: 1,
            ),
            const HeadlineQuestion(
              question:
                  'How would you describe your level of satisfaction with the healthcare system?',
            ),
            Container(
              padding: const EdgeInsets.only(top: 32),
              child: Column(
                children:
                    answers.map((answer) => AnswerBtn(answer: answer)).toList(),
              ),
            ),
            const Expanded(child: SizedBox()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackBtn(path: '/'),
                NextBtn(path: question2View),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
