import 'package:flutter/material.dart';

class QuestionNumberBtn extends StatelessWidget {
  final int questionNumber;
  const QuestionNumberBtn({required this.questionNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: EdgeInsets.all(9),
      decoration: BoxDecoration(
          color: Color(0xff8E84FF),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Color(0xffB8B2FF))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              margin: EdgeInsets.only(right: 16),
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                // color: Colors.purple,
                border: Border.all(color: Color(0xff2B0063)),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )),
          SizedBox(
            width: 8,
          ),
          Text(
            'Question $questionNumber',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w400,
                fontSize: 12),
          ),
        ],
      ),
    );
  }
}
