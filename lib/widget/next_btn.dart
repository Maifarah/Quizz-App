import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NextBtn extends StatelessWidget {
  final String path;
  const NextBtn({required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(path);
      },
      child: Container(
        width: 104,
        height: 39,
        decoration: BoxDecoration(
          color: const Color(0xff8E84FF),
          border: Border.all(color: Color(0xff8E84FF)),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Next',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
