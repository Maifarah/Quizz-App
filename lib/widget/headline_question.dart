import 'package:flutter/material.dart';

class HeadlineQuestion extends StatelessWidget {
  final String question;
  const HeadlineQuestion({required this.question});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 36, top: 16),
      child: Text(
        question,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Gilroy',
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
