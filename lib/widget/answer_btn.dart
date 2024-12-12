import 'package:flutter/material.dart';

class AnswerBtn extends StatefulWidget {
  final String answer;

  const AnswerBtn({super.key, required this.answer});

  @override
  State<AnswerBtn> createState() => _AnswerBtnState();
}

class _AnswerBtnState extends State<AnswerBtn> {
  Color answerBtnColor = Color(0xffFFFFFF);
  Color chekColorIcon = Color(0xffFFFFFF);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeState();
      },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: answerBtnColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            // if(isClicked == true){}
            Container(
              margin: EdgeInsets.only(right: 16),
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: chekColorIcon,
                border: Border.all(color: Color(0xff2B0063)),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Icon(
                Icons.done,
                size: 16,
                color: Colors.white,
              ),
            ),
            Text(
              widget.answer,
              style: const TextStyle(
                color: Color(0xff2B0063),
                fontFamily: 'Gilroy',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeState() {
    setState(() {
      answerBtnColor = Color(0xffC6C2F8);
      chekColorIcon = Color(0xff2B0063);
    });
  }
}
