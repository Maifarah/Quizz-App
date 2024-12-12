import 'package:flutter/material.dart';
import 'package:quize_app/widget/answer_btn.dart';
import 'package:quize_app/widget/back_btn.dart';
import 'package:quize_app/widget/costum_background.dart';
import 'package:quize_app/widget/headline_question.dart';
import 'package:quize_app/widget/next_btn.dart';
import 'package:quize_app/widget/question_number_btn.dart';

class Question3View extends StatelessWidget {
  const Question3View({super.key});
  final List<String> answers = const [
    'Doctors or healthcare providers',
    'Online resources',
    'Friends and family',
    'Social media',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CostumBackground(
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const QuestionNumberBtn(
              questionNumber: 3,
            ),
            const HeadlineQuestion(
              question: 'What is your primary source of health information?',
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
                BackBtn(path: '/question2View'),
                NextBtn(path: '/question4View'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
